const express = require('express');
const app = express();
require('dotenv').config();
const mongoose = require('mongoose');
const cors = require('cors');

// Import routes
const homeRoute = require('./routes/home');
const cameraRoute = require('./routes/cameraRoute');
const authRoute = require('./routes/auth');
const productsRoute = require('./routes/productsRoute');

// // Connect to DB  -- implement.
mongoose.connect(process.env.DB_CONNECTION, () => {
    console.log('connected to db!')
});

// Middlewares
app.use(express.json({limit: '50mb'}));
app.use(cors());

// Route Middlewares
app.use('/', homeRoute);
app.use('/cameraRoute', cameraRoute);
app.use('/auth', authRoute);
app.use('/products', productsRoute);

app.listen(process.env.PORT || 2000, () => {
    console.log('Server Up and running!');
});