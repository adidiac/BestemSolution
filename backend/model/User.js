const mongoose = require('mongoose');
const BSON = require('bson');


const userSchema = new mongoose.Schema({
    email: {
        type: String,
        required: true,
        default: null
    },
    password: {
        type: String,
        required: false
    },
    name: {
        type: String,
        required: true,
        default: null
    },
    img: {
        type: String,
        required: false,
        default: null
    },
    role: {
        type: String,
        required: true,
        default: 'user'
    },
    createdAt: {
        type: Date,
        default: Date.now
    }
});

module.exports = mongoose.model('User', userSchema);