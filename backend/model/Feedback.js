const mongoose = require('mongoose');

const feedbackSchema = new mongoose.Schema({
    result: {
        type: String,
        required: true,
    },
});


module.exports = mongoose.model('Feedback', feedbackSchema);