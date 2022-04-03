
import {Modal,Container,Row,Col,Tab,Button,Nav, Form} from 'react-bootstrap';
import axios from 'axios';
import {useState,useEffect} from 'react';
import {useSelector,useDispatch} from 'react-redux';
import * as Icons from 'react-bootstrap-icons';
import { FacebookProvider, LoginButton } from 'react-facebook';
import {GoogleLogin}  from 'react-google-login';
export default function ModalLogin({show,setShow})
{
    let dispatch=useDispatch();
    let user=useSelector(state=>state.user);
    const handleResponseFacebook = (data) => {
        console.log(data);    
        let email=data.profile.email;
        let name=data.profile.first_name+' '+data.profile.last_name;
        let id=data.profile.id;
        let picture=data.profile.picture.data.url;
        dispatch({type:'SET_CURRENT_USER',payload:{email,name,id,picture}});
        setShow(false);
    }
    const responseGoogle = (response) => {
        console.log(response.profileObj);
        let email=response.profileObj.email;
        let name=response.profileObj.givenName+' '+response.profileObj.familyName;
        let id=response.profileObj.googleId;
        let picture=response.profileObj.imageUrl;
        
        dispatch({type:'SET_CURRENT_USER',payload:{email,name,id,picture}});
        setShow(false);
      }
    const handleErrorFacebook = (error) => {
        console.log(error);
    }
    const sendLogin=(e)=>
    {
        e.preventDefault();
        let form=e.target;
        let email=form[0].value;
        let password=form[1].value;
        console.log(email,password);
        // axios.post("http://localhost:3000/users/login/",{email,password}).then(res=>{
        //     console.log(res.data);
        //     dispatch({type:"LOGIN",payload:res.data});
        //     }).catch(err=>{
        //         console.log(err);
        //     })
        setShow(false);
    }
    const sendRegister=(e)=>
    {
        e.preventDefault();
        let form=e.target;
        let name=form[0].value;
        let email=form[1].value;
        let password=form[2].value;
        // axios.post("http://localhost:3000/users/register/",{name,email,password}).then(res=>{
        //     console.log(res.data);
        //     dispatch({type:"LOGIN",payload:res.data});
        //     }).catch(err=>{
        //         console.log(err);
        //     })
        setShow(false);
    }
    return <>
    <Modal show={show} onHide={()=>{setShow(false)}}>
        <Modal.Header closeButton>
        <Modal.Title>Login</Modal.Title>
        </Modal.Header>
        <Modal.Body>
            <Container>
            <Row>
            <Col>
            <Tab.Container id="left-tabs-example" defaultActiveKey="first">
            <Row>
            <Col sm={3}>
            <Nav variant="pills" className="flex-column">
            <Nav.Item>
            <Nav.Link eventKey="first">Login</Nav.Link>
            </Nav.Item>
            <Nav.Item>
            <Nav.Link eventKey="second">Register</Nav.Link>
            </Nav.Item>
            </Nav>
            </Col>
            <Col sm={9}>
            <Tab.Content>
            <Tab.Pane eventKey="first">
            <h3>Login</h3>
            <br></br>
            <Form onSubmit={sendLogin}>
            <Form.Control type="email" placeholder="Enter email" />
            <br></br>
            <Form.Control type="password" placeholder="Password" />
            <br></br>
            
            <Button style={{margin:5}} variant="primary" type="submit">
                    Login
            </Button>
            <GoogleLogin
                clientId="1014471883707-os54kb55pdobochl263dje9drgc6u1o8.apps.googleusercontent.com"
                buttonText=""
                onSuccess={responseGoogle}
                onFailure={responseGoogle}
                cookiePolicy={'single_host_origin'}
            />
            <FacebookProvider appId="851147946285073">
                <LoginButton
                scope="email"
                onCompleted={handleResponseFacebook}
                onError={handleErrorFacebook}
                >
                <Icons.Facebook style={{margin:5}} size={20}/>
                </LoginButton>
            </FacebookProvider>
            </Form>
            </Tab.Pane>
            <Tab.Pane eventKey="second">
            <h3>Register</h3>
            <br></br>
            <Form onSubmit={sendRegister}>
            <Form.Control type="text" placeholder="Enter Name" />
            <br></br>
            <Form.Control type="email" placeholder="Enter email" />
            <br></br>
            <Form.Control type="password" placeholder="Password" />
            <br></br>
            <Button style={{margin:5}} variant="primary" type="submit">
                Register
            </Button>
            <GoogleLogin
                clientId="1014471883707-os54kb55pdobochl263dje9drgc6u1o8.apps.googleusercontent.com"
                buttonText=""
                onSuccess={responseGoogle}
                onFailure={responseGoogle}
                cookiePolicy={'single_host_origin'}
            />
            <FacebookProvider appId="851147946285073">
                <LoginButton
                scope="email"
                onCompleted={handleResponseFacebook}
                onError={handleErrorFacebook}
                >
                <Icons.Facebook style={{margin:5}} size={20}/>
                </LoginButton>
            </FacebookProvider>
            </Form>
            </Tab.Pane>
            </Tab.Content>
            </Col>
            </Row>
            </Tab.Container>
            </Col>
            </Row>
            </Container>
        </Modal.Body>
        <Modal.Footer>
        <Button onClick={()=>{setShow(false)}}>Close</Button>
        </Modal.Footer>
    </Modal>
    </>        
}
