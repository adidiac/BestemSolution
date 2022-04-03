import { Button, Container,Row } from "react-bootstrap"
import { useSpeech,useRecognition } from "react-web-voice";
import * as Icons from 'react-icons/si'
import AudioSpectrum from 'react-audio-spectrum';
import { useEffect, useState,useRef } from "react";
import Webcam from "react-webcam";
import {url} from '../../utils/constants';
import axios from 'axios'
import sample from "./sample.mp3";
import { useSelector, useDispatch } from "react-redux";
import { TransactionContext } from '../../Transanctions/TransactionProvider';
import { useContext } from "react";
import { shopAddress } from '../../utils/constants';
function editDistance(s1, s2) {
    s1 = s1.toLowerCase();
    s2 = s2.toLowerCase();
    
    var costs = new Array();
    for (var i = 0; i <= s1.length; i++) {
      var lastValue = i;
      for (var j = 0; j <= s2.length; j++) {
        if (i == 0)
          costs[j] = j;
        else {
          if (j > 0) {
            var newValue = costs[j - 1];
            if (s1.charAt(i - 1) != s2.charAt(j - 1))
              newValue = Math.min(Math.min(newValue, lastValue),
                costs[j]) + 1;
            costs[j - 1] = lastValue;
            lastValue = newValue;
          }
        }
      }
      if (i > 0)
        costs[s2.length] = lastValue;
    }
    return costs[s2.length];
  }
  function useInterval(callback, delay) {
    const savedCallback = useRef();

    // Remember the latest function.
    useEffect(() => {
        savedCallback.current = callback;
    }, [callback]);

    // Set up the interval.
    useEffect(() => {
        function tick() {
            savedCallback.current();
        }
        if (delay !== null) {
            let id = setInterval(tick, delay);
            return () => clearInterval(id);
        }
    }, [delay]);
}
export default function BlindScreen()
{
    const dispatch=useDispatch();
    const webcamRef = useRef(null);
    const videoConstraints = {
        width: 200,
        height: 200,
        facingMode: "user"
      };
      const delay=5000;
    const products=useSelector(state=>state.products);
    const [produse,setProduse]=useState([]);
    const { currentAccount, connectWallet, handleChange, sendTransaction, formData,isLoading } = useContext(TransactionContext);
    const [isRunning,setIsRunning]=useState(false);
    useInterval(() => {
        const imageSrc = webcamRef.current.getScreenshot();
        console.log("stop");
        //add to message as user to stop
        axios.post(url+"/cameraRoute/objectDetection",{imgs:[imageSrc],size:1}).then(res=>{
            console.log(res.data);
            console.log("cebs")
            speakHoverHandler(`You have ordered ${res.data}`);
            produse.map(product=>{
            
                if(product.name===res.data)
                {
                    console.log('not found1');
                    console.log(product.name);
                    dispatch({type:'ADD_PRODUS',payload:product});
                    
                }
            })
        }).catch(err=>{
            console.log(err);
        })
        setIsRunning(false);
       
    }, isRunning ? delay : null);
    const buy=()=>{
     
        let price=0;
        let name='';
        products.forEach(product=>{
            price+=product.price;
            name+=product.name+',';
        })
        
        let formData={
            amount:price.toString(),
            addressTo:shopAddress,
            keyword:name,
            message:name
        }
        sendTransaction(formData);
        dispatch({type:'EMPTY_PRODUSE'});

    }


  
    
    let comands=["CAKE",
        "CANDY",
        "CEREAL",
        "CHIPS",
        "CHOCOLATE",
        "COFFEE",
        "CORN",
        "FISH",
        "FLOUR",
        "HONEY",
        "JAM",
        "JUICE",
        " MILK",
        "NUTS",
        "OIL",
        "PASTA",
        "RICE",
        "SODA",
        "SPICES",
        "SUGAR",
        "TEA",
        "TOMATO SAUCE",
        "VINEGAR",
        "WATER",
        "COMPLET",
        "OBJECT"]
    const { messages, speak } = useSpeech();
    const [speeaking,setSpeeaking] = useState(true);
    const speakHoverHandler = async (text) => {
        setSpeeaking(false);
        console.log(text);
        const utterance = await speak({
          text: text,
          volume: 0.5,
          rate: 1,
          pitch: 1,
        });
       
      };


    const { transcripts, listen } = useRecognition();
 
    const listenButtonHandler = async () => {
        document.getElementById("audio-element").playbackRate =10;
        document.getElementById("audio-element").play();
      const transcript = await listen();
        
        let word=transcript.toUpperCase();
        let comand1='REPEAT';
        let find=false;
        console.log(word);
        comands.map(comand=>{
            if(word.includes(comand))
            {
                if(comand1!=="COMPLET"&&comand1!=="OBJECT")
                {
                    speakHoverHandler(`You have ordered ${comand}`);
                }
                comand1=comand;
            }
        })
        console.log("logic")
        console.log(comand1);
        if(comand1==="REPEAT")
        {
            speakHoverHandler("Repeat please");
        }else
        if(comand1==="COMPLET")
        {
            if(currentAccount){
            speakHoverHandler("Thank you for your order");
            buy();
            }else{
                speakHoverHandler("We will connect your wallet first than say COMPLET again");
                connectWallet();
            }

        }else if(comand1==="OBJECT")
        {
            setIsRunning(true);
        }
        else{
            console.log('not found');
            console.log(comand1);
        let productsName='';
        let productsPrice=0;
        produse.map(product=>{
            
            if(product.name===comand1)
            {
                console.log('not found1');
                console.log(product.name);
                dispatch({type:'ADD_PRODUS',payload:product});
            }
        })
        speakHoverHandler("Thank you for your order");
       
        }
        document.getElementById("audio-element").pause();
    };
    const getAllProduse=()=>{
        axios.get(url+"/products/").then(res=>{
            console.log(res.data);
            //map through the array of products
            let p=[];
            res.data.map(produs=>{
                p.push({name:produs.title,price:produs.price/10000,picture:produs.img});
            })
            setProduse(p);
        }).catch(err=>{
            console.log(err);
        })
        
    }
   
    
  
    
    useEffect(()=>{
        getAllProduse();
        speakHoverHandler("Welcome to the shopping page! Press the button in the middle of the page and say the name of the product you want to buy and then say Complete to add it to cart. Optionally, you can say Object to scan the product in front of you!");
    },[])
    return <>
    <Webcam style={{border:"2px solid black",borderRadius:"5px",position:'absolute',left:20,bottom:20}}
                    audio={false}
                    height={200}
                    screenshotFormat="image/jpeg"
                    width={200}
                    ref={webcamRef}
                    videoConstraints={videoConstraints}
                >
                </Webcam>
    <Container style={{textAlign:"center",position: 'absolute', left: '50%', top: '50%',
        transform: 'translate(-50%, -50%)'}}>
            <Row>
                <Icons.SiAudioboom size={200} style={{color:'white'}} 
                onMouseOver={()=>{if(speeaking) speakHoverHandler(
                    "Press here to record"
                );}} 
                onMouseLeave={()=>{setSpeeaking(true)}}
                onClick={()=>{
                    listenButtonHandler();
                }}
                />
            </Row>
            <Row>
                <audio src={sample} id="audio-element" muted />
                <AudioSpectrum 
                id="audio-canvas"
                height={30}
                width={100}
                audioId={'audio-element'}
                capColor={'red'}
                capHeight={5}
                meterWidth={2}
                meterCount={512}
                meterColor={[
                    {stop: 0, color: '#f00'},
                    {stop: 0.5, color: '#0CD7FD'},
                    {stop: 1, color: 'red'}
                ]}
                gap={4}
                />
            </Row>
    </Container>
    </>
}