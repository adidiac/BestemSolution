import {Navbar,Nav,Container,Button,Offcanvas,Form,FormControl,Row,Col} from 'react-bootstrap';
import { useDispatch, useSelector } from 'react-redux';
import { useState,useEffect } from 'react';
import ModalLogin from './Modals/ModalLogin';
import * as Icons from 'react-bootstrap-icons'
import ModalCart from './Modals/ModalCart';
import { useContext } from "react";
export default function MyNavbar({}) {
  
  
  const [showLogin, setShowLogin] = useState(false);
  const [showCart, setShowCart] = useState(false);
  let user=useSelector(state=>state.user);
  let dispatch=useDispatch(); 

  const renderProfile=()=>{
    if(user.isAuthenticated && user.user)
    {
      return <>
      <Row className="justify-content-center" >
        <Col  xs="3" md="3" lg="3"> 
          <img src={user.user.picture}  referrerpolicy="no-referrer" style={{width:50,height:50,borderRadius:"50%",border:"3px solid #ADD8E6"}}/>
        </Col>
          <Col  xs="auto" md="auto" lg="auto">
            {user.user.name}
          </Col>
      </Row>
      </>
      }
      else
        return 'Login';
    }

  useEffect(()=>{
    console.log('user');
    console.log(user);
    },[]);
  return <>
  <Navbar bg="primary" variant="dark" expand={false}>
  <Container fluid>
    <Navbar.Brand style={{margin:10,padding:5,fontSize:40,fontWeight:'bold'}}>Titlu</Navbar.Brand>
    <Navbar.Toggle aria-controls="offcanvasNavbar" />
    <Navbar.Offcanvas   style={{backgroundColor:"darkblue",color:'white'}}
      id="offcanvasNavbar"
      aria-labelledby="offcanvasNavbarLabel"
      placement="end"
    >
      <Offcanvas.Header bg="primary" style={{color:'white'}} closeButton closeVariant='white'>
        <Offcanvas.Title id="offcanvasNavbarLabel">Menu</Offcanvas.Title>
      </Offcanvas.Header>
      <Offcanvas.Body bg="primary" style={{textAlign:'center'}}>
        <Nav className="justify-content-end flex-grow-1 pe-3" variant='dark' bg="primary">
        <Nav.Link onClick={(e)=>{ 
            if(!user.isAuthenticated)
                setShowLogin(true)
                
            }} style={{fontSize:30,color:'white'}} > 
            {renderProfile()}
            </Nav.Link>
            <hr style={{height:'2'}}></hr>
            <Nav.Link  onClick={(e)=>{
                setShowCart(true)
                }} >
                    <Row className="justify-content-center" >
                        <Col style={{padding:5,margin:0}} xs="2" md="2" lg="2">
                    <Icons.Basket2Fill style={{color:'white',border:'2px solid white',borderRadius:'50%',padding:2}} size={40}/>
                    </Col>
                    <Col style={{padding:10,margin:0}} xs="2" md="2" lg="2">
                    <h5 style={{color:'white'}}>Cart</h5>
                    </Col>
                    </Row>
                    </Nav.Link>
     
        </Nav>
      </Offcanvas.Body>
    </Navbar.Offcanvas>
  </Container>
</Navbar>
  <ModalLogin show={showLogin} setShow={setShowLogin}></ModalLogin>
  <ModalCart setModalShow={setShowCart} modalShow={showCart} ></ModalCart>
</>
} 