const router = require('express').Router();
const {raw, response} = require('express');
const {spawn} = require('child_process');
const path = require('path');
require('dotenv').config();


function getLetterBySign(args) {
    return new Promise((resolve) => {
        const pyprog = spawn('python', [process.cwd() + '/translateLetter.py', args]);
        pyprog.stderr.on('data', (data) => {
            resolve(`ps stderr: ${data}`);
        });
        pyprog.stdout.on('data', function(data)  {
            resolve(data.toString());
        });
    });
}

router.post('/signLanguage', (req, res) => {

    try {
        const size = req.body.size;
        if(!size) {
            return res.status(400).send('No images were received');
        }
    
        const imgs = req.body.imgs;
        if(imgs) {
            var letters = imgs.map((img) => {
                // get the b64 encoded image.
                var b64img = img.substring(img.indexOf(',')+1);
                // call script to get feedback
                return 'G';
            });
            if(letters.length == size) {
                return res.status(200).send(letters.join(''));
            }
            else {
                return res.status(500).send('Couldn\'t process all images');
            }
        }
        else {
            return res.status(404).send('Couldn\'t get the images');
        }
    }
    catch(err) {
        return res.status(500).send({message: err});
    }
});

module.exports = router;