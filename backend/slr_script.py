import logging
logging.raiseExceptions = False
import os
import cv2
import keras
import numpy as np
from keras.models import load_model
import mediapipe as mp
import base64
import io
from imageio import imread
import sys

filepath = sys.argv[1]

with open(filepath, "r") as f:
    data = f.read()

loaded_model = load_model('./slr_model')
drawingModule = mp.solutions.drawing_utils
handsModule = mp.solutions.hands

sign_dict = {}
dim = 40
i = 0
for letter_ascii in range(65, 90, 1):
    if chr(letter_ascii) != 'J':
        sign_dict[i] = chr(letter_ascii)
        i += 1
    else:
        continue
images = data.split(";")
for image in images:
    letter = "-"
    if image:
        img = imread(io.BytesIO(base64.b64decode(image)))
        imageWidth, imageHeight, _ = img.shape

        with handsModule.Hands(static_image_mode=True, max_num_hands=1) as hands:
            results = hands.process(img)  # cv2.cvtColor(img, cv2.COLOR_BGR2RGB))
            # print('in')
            if results.multi_hand_landmarks is not None:
                # print('in2')
                point_dict = {}
                for handLandmarks in results.multi_hand_landmarks:
                    # drawingModule.draw_landmarks(img, handLandmarks, handsModule.HAND_CONNECTIONS)
                    for point in handsModule.HandLandmark:
                        normalizedLandmark = handLandmarks.landmark[point]
                        pixelCoordinatesLandmark = drawingModule._normalized_to_pixel_coordinates(normalizedLandmark.x,
                                                                                                  normalizedLandmark.y,
                                                                                                  imageWidth,
                                                                                                  imageHeight)
                        point_dict[point] = pixelCoordinatesLandmark
                min_x, min_y, max_x, max_y = 1024, 1024, 0, 0
                for value in point_dict.keys():
                    if point_dict[value]:
                        x, y = point_dict[value][0], point_dict[value][1]
                        if min_x > x:
                            min_x = x
                        if min_y > y:
                            min_y = y
                        if max_x < x:
                            max_x = x
                        if max_y < y:
                            max_y = y
                if min_x != 0 and min_y != 0:
                    if min_x != 0 and min_y != 0:
                        if min_x - dim < 0:
                            min_x = 0
                        else:
                            min_x = min_x - dim
                        if min_y - 2 * dim < 0:
                            min_y = 0
                        else:
                            min_y = min_y - 2 * dim
                max_x, max_y = max_x + 3 * dim, max_y
                # start_point = (min_x, min_y)
                # end_point = (max_x, max_y)
                # color = (255, 0, 0)
                # thickness = 5
                # returnable_frame = cv2.rectangle(returnable_frame, start_point, end_point, color, thickness)
                frame = img[min_x:max_x, min_y:max_y, :]
                grayscale = cv2.cvtColor(frame, cv2.COLOR_RGB2GRAY)
                cropped_img = np.expand_dims(np.expand_dims(cv2.resize(grayscale, (28, 28)), -1), 0)

                # cv2.normalize(cropped_img, cropped_img, alpha=0, beta=1, norm_type=cv2.NORM_L2, dtype=cv2.CV_32F)
                prediction = loaded_model.predict(cropped_img)
                letter = sign_dict[int(np.argmax(prediction))]
                # cv2.imwrite('./image.jpg', grayscale)
                #             print(grayscale.shape)
                # cv2.imshow('img', grayscale)
                # cv2.waitKey(0)
                # cv2.destroyAllWindows()
        print(letter, end='')
