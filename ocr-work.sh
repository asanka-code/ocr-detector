#!/bin/bash

IMAGE=$1

convert ${IMAGE} -colorspace gray -threshold 28% target.png
#convert ${IMAGE} -gaussian-blur 0 -threshold 28% -paint 1 target.png
#convert ${IMAGE} -gaussian-blur 0 -threshold 28% -paint 1 target.png

eog target.png

tesseract target.png -

