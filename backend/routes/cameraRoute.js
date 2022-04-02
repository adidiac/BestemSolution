const router = require('express').Router();
const {raw, response} = require('express');
const {spawn} = require('child_process');
const path = require('path');
require('dotenv').config();
const fs = require('fs');
const Product = require('../model/Product');


function getProductBySigns(args) {
    return new Promise((resolve) => {
        const pyprog = spawn('python', [process.cwd() + '/slr_script.py', args]);
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
            console.log(imgs.length);
            imgs.forEach((img) => {
                // get the b64 encoded image.
                var b64img = img.substring(img.indexOf(',')+1);

                // dump b64img in b64imgs file with ';' delimitator
                fs.appendFileSync("b64imgs", b64img+';', function(err) {
                    if(err) {
                        return res.status(500).send('Couldn\'t dump images for script');
                    }
                })
            });
             // call script to get feedback
             getProductBySigns('b64imgs')
             .then(response => {

                // match the response with at least one product.
                let max = -1;
                let cnt=0;
                let posOfThatElement = 0;
                let cntElem = 0;
                Product.find({}, function(err, products) {
                    products.forEach((product) => {
                        cnt=0;
                        for(var i=0;i<response.length;i++) {
                            if(response[i] == product.title[i]) {
                                cnt++;
                            }
                            if(cnt > max) {
                                max = cnt;
                                posOfThatElement = cntElem;
                            }
                        }
                        cntElem++;
                    });

                    if(max != -1) {
                        res.status(200).send(products[posOfThatElement].title);
                    }
                    else {
                        res.status(400).send(err);
                    }
                });
            })
             .catch(err => {
                res.status(400).send(err);
            })
             .finally(() => {
                fs.unlinkSync('./b64imgs', (err) => {
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