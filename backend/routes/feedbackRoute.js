const router = require('express').Router();
const {raw, response} = require('express');
const {spawn} = require('child_process');
const path = require('path');
require('dotenv').config();
const fs = require('fs');
const Feedback = require('../model/Feedback');


function getEmotionByFace(args) {
    return new Promise((resolve) => {
        const pyprog = spawn('python', [process.cwd() + '/emotion_detection.py', args]);
        pyprog.stdout.on('data', function(data)  {
            resolve(data.toString());
        });
    });
}

router.post('/', (req, res) => {

    try {
        const size = req.body.size;
        if(!size) {
            return res.status(400).send('No images were received');
        }
    
        const imgs = req.body.imgs;
        if(imgs) {
            console.log(imgs.length);
            imgs.forEach((img) => {
                // get the b64 encoded image.
                var b64img = img.substring(img.indexOf(',')+1);

                // dump b64img in b64imgs file with ';' delimitator
                fs.appendFileSync("b64imgs_emotion", b64img+';', function(err) {
                    if(err) {
                        return res.status(500).send('Couldn\'t dump images for script');
                    }
                })
            });
             // call script to get feedback
             getEmotionByFace('b64imgs_emotion')
             .then(response => {
                const r = response.slice(0,-1);
                const feedbackRes = new Feedback({
                    result: r
                });
                feedbackRes.save();
                res.status(200).send(r);
            })
             .catch(err => {
                res.status(400).send(err);
            })
             .finally(() => {
                fs.unlinkSync('./b64imgs_emotion', (err) => {
                    if(err) {
                        console.error(err);
                    }
                });
            });
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