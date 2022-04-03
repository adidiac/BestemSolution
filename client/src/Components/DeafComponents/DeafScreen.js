
import {Col,Container,Row} from 'react-bootstrap';
import ProductsPage from "../ProductsPage";
import ChatBot from './Chatbot';
export default function DeafScreen()
{
   
    return <>
    <Row>
        <Col style={{}}>
      <ProductsPage></ProductsPage>
  </Col>
  <Col style={{padding:20}}>
    <ChatBot></ChatBot>
  </Col>
  </Row>
    </>
}