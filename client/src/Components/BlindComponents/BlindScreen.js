import { Button, Container,Row } from "react-bootstrap"
import { useSpeech,useRecognition } from "react-web-voice";
import * as Icons from 'react-icons/si'
import AudioSpectrum from 'react-audio-spectrum';
import { useEffect, useState } from "react";
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
export default function BlindScreen()
{
    const products=useSelector(state=>state.products);
    const { currentAccount, connectWallet, handleChange, sendTransaction, formData,isLoading } = useContext(TransactionContext);

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
        

    }


    const dispatch=useDispatch();
    const [produse,setProduse]=useState([{name:"Zahar",price:"0.001",picture:''}]);
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
        "COMPLET",]
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
        console.log(transcript);
        let word=transcript.toUpperCase();
        let comand1='';
        comands.map(comand=>{
            if(word.includes(comand))
            {
                if(comand1!=="COMPLET")
                speakHoverHandler(`You have ordered ${comand}`);
                comand1=comand;
            }
        })
        if(comand1==="COMPLET")
        {
            if(currentAccount){
            speakHoverHandler("Thank you for your order");
            buy();
            }else{
                speakHoverHandler("Please connect your wallet first than say COMPLET again");
            }

        }else{
        let productsName='';
        let productsPrice=0;
        produse.map(product=>{
            console.log(product.name);
            if(editDistance (product.name,comand1)>0.5)
            {
                productsName+=product.name+",";
            productsPrice+=product.price;
                dispatch({type:'ADD_PRODUS',payload:product});
            }
        })
        speakHoverHandler(`You have ordered ${productsName} for a total of ${productsPrice.toString()} till now say complete to finish`);
        }
        document.getElementById("audio-element").pause();
    };
    useEffect(()=>{
        speakHoverHandler("Welcome to the shopping page! Press the button in the middle of the page and say the name of the product you want to buy and then say Complete to add it to cart. Optionally, you can say Detect to scan the product in front of you!");
    },[])
    return <>
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