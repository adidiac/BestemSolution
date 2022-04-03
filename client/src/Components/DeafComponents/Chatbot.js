import { useEffect, useState,useRef } from "react";
import { Container,Button,Row,Col,Form,FormControl } from "react-bootstrap";
import axios from 'axios'
import Webcam from "react-webcam";
import { useSelector, useDispatch } from "react-redux";
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

    const webcamRef = useRef(null);
    const [isRunning,setIsRunning]=useState(false);
    const [images,setImages]=useState([]);
    const [contor,setContor]=useState(0);

    const delay=2000;
    useInterval(() => {
        const imageSrc = webcamRef.current.getScreenshot();
        setImages(images=>[...images,imageSrc]);
        setContor(contor=>contor+1);
        if(contor>=10){
            setIsRunning(false);
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

    const sendData=(message1)=>{
        document.getElementById("inputChat").value="";
        console.log(messages)
        // axios.post("http://localhost:2409/children/chatbot/",{message:message1,tokenSession:userId}).
        // then((res)=>{
        //     console.log(res.data);
        //     setMessage([...messages,{message:message1,user:"userul"},{message:res.data,user:"bot"}])
        //     updateScroll();
        // }).catch(function (error) {
        //     console.log(error)
        //   });;

        
        //send message and userId
    }
    useEffect(()=>{
        let id=makeid(6);
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
                                return <Row className="justify-content-md-end" style={{margin:10}}
                                >
                                    <Col style={{maxWidth:100,padding:10,backgroundColor:"blueViolet",color:"white",borderRadius:"7px"}}>
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