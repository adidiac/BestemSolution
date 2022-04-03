import {Col,Container,Row} from 'react-bootstrap';
import * as IconsB from 'react-bootstrap-icons';
import * as Icons from 'react-icons/fa'
import * as Icons2 from 'react-icons/io'
import {useSelector,useDispatch} from 'react-redux';
import DeafScreen from "./DeafComponents/DeafScreen";
import BlindScreen from "./BlindComponents/BlindScreen";
import ProductsPage from "./ProductsPage";
import {useSpeech} from 'react-web-voice'
import {useEffect,useState} from 'react';
export default function HomeScreen()
{
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
    const dispatch=useDispatch();
    const options=[
        {
            icon:<Icons2.IoMdPerson style={{height:200,width:200}} />,
            title:'People with no disability',
            onclick:()=>{
                //setUser({...user,type:"parent",logged:"no"});
                dispatch({type:"SET_PAGE",payload:<ProductsPage />});
            }
        },
        {
        icon:<Icons.FaDeaf style={{height:200,width:200}} />,
        title:'For Deaf People',
        onclick:()=>{
            console.log("ceva");
            //setUser({...user,type:"child"});
            //console.log(user);
            dispatch({type:"SET_PAGE",payload:<DeafScreen />});
        }
    },
    {
        icon:<Icons.FaBlind style={{height:200,width:200}} />,
        title:'For Blind People',
        onclick:()=>{
            //setUser({...user,type:"parent",logged:"no"});
            dispatch({type:"SET_PAGE",payload:<BlindScreen />});
        }
    },
   
    ]
    return <>
<Container style={{textAlign:"center",position: 'absolute', left: '50%', top: '50%',
    transform: 'translate(-50%, -50%)'}}>
        <Col>
        <Row>
            <h1 style={{color:"white",
            textShadow:"-2px -2px 0 #000,2px -2px 0 #000,-2px 2px 0 #000,2px 2px 0 #000",fontSize:40,fontWeight:'bold'}}>Hello</h1>
        </Row>
        <Row>
            <h1 style={{color:"white",textShadow:"-2px -2px 0 #000,2px -2px 0 #000,-2px 2px 0 #000,2px 2px 0 #000",fontSize:40,fontWeight:'bold'}}>How your website would like to look?</h1>
        </Row>
        <br></br>
        <Row className="justify-content-md-center">
            {options.map((e)=>{
                return <Col onMouseOver={()=>{if(speeaking) speakHoverHandler(e.title);}} onMouseLeave={()=>{setSpeeaking(true)}}
                onClick={()=>{e.onclick()}} className="mybutton" style={{boxShadow:"2px 20px 30px 10px grey",margin:20,backgroundColor:"white",maxWidth:200,padding:30,margin:20}}>
                        <Row className="justify-content-md-center">
                            {e.icon}
                        </Row>
                        <br></br>
                        <Row className="justify-content-md-center">
                            <h3>{e.title}</h3>
                        </Row>
                    </Col>
            })}
        </Row>
        </Col>
    </Container>
    </>
}