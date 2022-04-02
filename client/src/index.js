import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import { userReducer } from './Reducers/userReducer'
import {Provider} from 'react-redux';
import {createStore, combineReducers} from 'redux';
import {TransactionsProvider} from './Transanctions/TransactionProvider'
const rootReducer = combineReducers({
    user: userReducer
});
const store = createStore(rootReducer); 

ReactDOM.render(
  <TransactionsProvider>
  <Provider store={store}>
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  </Provider>
  </TransactionsProvider>,
  document.getElementById('root')
);

