const mongoose = require('mongoose');
require('dotenv').config();
const Product=require('../model/Product');

const uri = process.env.DB_CONNECTION;

mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true})
.then(result => {
    console.log('connected to MongoDB')
  })
  .catch((error) => {
    console.log('error connecting to MongoDB:', error.message)
})

function addProduct(title, img, price) {
    var product = new Product({
        title: title,
        img: img,
        price: price
    });

    product.save();
}

addProduct('CAKE', 'https://cdn-icons.flaticon.com/png/512/2682/premium/2682340.png?token=exp=1648914528~hmac=1bf93e4aa661e02c087dc2a7168b7ee8', 15.5);
addProduct('CANDY', 'https://cdn-icons-png.flaticon.com/512/1888/1888900.png', 2.5);
addProduct('CEREAL', 'https://cdn-icons-png.flaticon.com/512/2829/2829840.png', 7.0);
addProduct('CHIPS', 'https://cdn-icons-png.flaticon.com/512/3050/3050268.png', 5.5);
addProduct('CHOCOLATE', 'https://cdn-icons.flaticon.com/png/512/2136/premium/2136997.png?token=exp=1648914675~hmac=7e3c4daf30ef6a6a47576e90f4c5dde9', 4.5);
addProduct('CORN', 'https://cdn-icons-png.flaticon.com/512/2619/2619499.png', 8.5);
addProduct('FLOUR', 'https://cdn-icons-png.flaticon.com/512/1182/1182154.png', 7.3);
addProduct('MILK', 'https://cdn-icons.flaticon.com/png/512/869/premium/869664.png?token=exp=1648914784~hmac=c342e49557c1571b37bf851a89ecddc5', 12.5);
addProduct('OIL', 'https://cdn-icons-png.flaticon.com/512/4264/4264676.png', 11.2);
addProduct('PASTA', 'https://cdn-icons.flaticon.com/png/512/3817/premium/3817849.png?token=exp=1648914822~hmac=58acc942cbe5c4ea921feddb40ed3e9a', 11.5);
addProduct('SPICES', 'https://cdn-icons-png.flaticon.com/512/2160/2160216.png', 14.5);
addProduct('TEA', 'https://cdn-icons.flaticon.com/png/512/2382/premium/2382675.png?token=exp=1648914873~hmac=ce2e16be8237bd520325abac2f362618', 10.0);
addProduct('TOMATO', 'https://cdn-icons-png.flaticon.com/512/1202/1202125.png', 10.5);
addProduct('VINEGAR', 'https://cdn-icons-png.flaticon.com/512/123/123309.png', 5.0);
addProduct('WATER', 'https://cdn-icons-png.flaticon.com/512/824/824239.png', 9.5);