#!/bin/bash

_date=$(date +"%Y-%m-%d_%H%M")

raspistill -o /home/pi/Desktop/timelapse-pi/data/images/$_date.jpg



