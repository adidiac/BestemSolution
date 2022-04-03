import { useEffect, useState,useRef } from "react";
import { Container,Button,Row,Col,Form,FormControl } from "react-bootstrap";
import axios from 'axios'
import { TransactionContext } from '../../Transanctions/TransactionProvider';
import { shopAddress } from '../../utils/constants';
import { useContext } from "react";
import Webcam from "react-webcam";
import { useSelector, useDispatch } from "react-redux";
import {url} from '../../utils/constants';
function makeid(length) {
    var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * 
 charactersLength));
   }
   return result;
}

function updateScroll(){
    var element = document.getElementById("chat");
    element.scrollTop = element.scrollHeight;
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
export default function ChatBot()
{
    const { currentAccount, connectWallet, handleChange, sendTransaction, formData,isLoading } = useContext(TransactionContext);
    const [produse,setProduse]=useState([]);
    const dispatch=useDispatch();
    const products=useSelector(state=>state.products);
    const webcamRef = useRef(null);
    const [isRunning,setIsRunning]=useState(false);
    const [images,setImages]=useState([]);
    const [contor,setContor]=useState(0);

    const delay=2000;
    const buy=()=>{
        let price=0;
        let name='';

        console.log(products);
        products.map((product,idx)=>{
            price+=product.price;
            if(idx===products.length-1)
                name+=product.name;
            else
                name+=product.name+',';
        })
        console.log(price);
        console.log(name);
        let formData={
            amount:price.toString(),
            addressTo:shopAddress,
            keyword:name,
            message:name
        }
        sendTransaction(formData);
        dispatch({type:'EMPTY_PRODUSE'});

    }
    useInterval(() => {
        const imageSrc = webcamRef.current.getScreenshot();
        setImages(images=>[...images,imageSrc]);
        setContor(contor=>contor+1);
        if(contor==10){
            
            console.log("stop");
            //add to message as user to stop
            setMessage(message=>[...message,{message:"You can stop",user:"bot"}]);
            console.log(images);
            axios.post(url+"/cameraRoute/signLanguage",{imgs:images,size:10}).then(res=>{
                console.log(res.data);
                //setFeedbackText(res.data);
                console.log("done");
                if(res.data!="COMPLETE"){
                setMessage(message=>[...message,{message:"You selected "+res.data,user:"userul"}]);
                produse.map(p=>{
                    if(p.name==res.data){
                       dispatch({type:"ADD_PRODUS",payload:p});
                    }

                })
                }
                else{
                    buy();
                }  
                setImages([]);
                setIsRunning(false);
                setContor(0);
                setImages([]);
                setIsRunning(false);
            }).catch(err=>{
                console.log(err);
            })
        }
    }, isRunning ? delay : null);

    const videoConstraints = {
        width: 200,
        height: 200,
        facingMode: "user"
      };
      
    const [userId,setUserId]=useState();
    const [messages,setMessage]=useState(
        [{message:"Hello",user:"bot"},
        {message:"Please press Start and than using sign language say one of the following products to add to your cart",user:"bot"},
        {message:"CAKE CANDY CEREAL CHIPS CHOCOLATE COFFEE CORN FISH FLOUR HONEY JAM JUICE MILK NUTS OIL PASTA RICE SODA SPICES SUGAR TEA TOMATO_SAUCE VINEGAR WATER ",user:"bot"},
        {message:"Or COMPLETE to finish your cart",user:"bot"}
    ]);

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
        //setUserId(id);
    },[])
    
    return <>
     <Container style={{textAlign:"center",boxShadow:"2px 10px 20px 5px grey",padding:20,maxWidth:500,maxHeight:800,color:"black"
    ,backgroundColor:"white",borderRadius:"10px"}}>
        <Col>
            <Row style={{padding:10}}>
                <h3>Let's chat</h3>
            </Row>
            <Row>
                <Container style={{width:"90%",minHeight:400,maxHeight:400,border:"2px solid black",padding:10,overflowY:"scroll",
                borderRadius:"5px"}} id="chat">
                    {
                        messages.map((e)=>{
                            if(e.user=="userul")
                            {
                                return <Row className="justify-content-md-end" style={{margin:10,fontSize:13,textAlign:"start"}}
                                >
                                    <Col style={{maxWidth:200,padding:10,backgroundColor:"blueViolet",color:"white",borderRadius:"7px"}}>
                                    {e.message}
                                    </Col>
                                </Row>
                            }
                            else if(e.user=="bot")
                            {
                                return <Row className="justify-content-md-start" style={{margin:8,fontSize:13,textAlign:"start"}}>
                                     <Col style={{maxWidth:200,padding:10,backgroundColor:"blue",color:"white",borderRadius:"7px"}}>
                                    {e.message}
                                    </Col>
                                </Row>
                            }
                        })
                    }
                </Container>
            </Row>
            <Row style={{margin:10,padding:5}}>
                <Col>
                <Webcam style={{border:"2px solid black",borderRadius:"5px"}}
                    audio={false}
                    height={200}
                    screenshotFormat="image/jpeg"
                    width={200}
                    ref={webcamRef}
                    videoConstraints={videoConstraints}
                >
                </Webcam>
                </Col>
                <Col>
                <Button id="button-addon2" style={{fontSize:20}} onClick={()=>{setIsRunning(true)}}>
                    Spell
                </Button>
                </Col>
            </Row>
        </Col>
    </Container>
    </>
}