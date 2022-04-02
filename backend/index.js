const express = require('express');
const app = express();
require('dotenv').config();
const mongoose = require('mongoose');
const cors = require('cors');

// Import routes
const homeRoute = require('./routes/home');

// // Connect to DB  -- implement.
// mongoose.connect(process.env.DB_CONNECTION, () => {
//     console.log('connected to db!')
// });

// Middlewares
app.use(express.json());
app.use(cors());

// Route Middlewares
app.use('/', homeRoute);

app.listen(process.env.PORT || 2000, () => {
    console.log('Server Up and running!');
});