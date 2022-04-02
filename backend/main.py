from keras.models import load_model
import cv2
import numpy as np
import sys
import io
from imageio import imread
import base64

MODEL_PATH = './model_checkpoint'
object_dict = {0: 'beans',
               1: 'cake',
               2: 'candy',
               3: 'cereal',
               4: 'chips',
               5: 'chocolate',
               6: 'coffee',
               7: 'corn',
               8: 'fish',
               9: 'flour',
               10: 'honey',
               11: 'jam',
               12: 'juice',
               13: 'milk',
               14: 'nuts',
               15: 'oil',
               16: 'pasta',
               17: 'rice',
               18: 'soda',
               19: 'spices',
               20: 'sugar',
               21: 'tea',
               22: 'tomato sauce',
               23: 'vinegar',
               24: 'water'}

model = load_model('./model_checkpoint')
filepath = sys.argv[1]

with open(filepath, "r") as f:
    data = f.read()

images = data.split(";")
for image in images:
    if image:
        img = imread(io.BytesIO(base64.b64decode(image)))
        prediction_image = np.expand_dims(
            np.expand_dims(cv2.resize(cv2.cvtColor(img[50:200, 50:200, :], cv2.COLOR_BGR2RGB), (150, 150)), -1), 0)
        prediction = model.predict(prediction_image)
        print(object_dict[int(np.argmax(prediction))], end='')
