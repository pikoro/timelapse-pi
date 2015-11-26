#!/bin/bash

_date=$(date +"%Y-%m-%d_%H%M")

raspistill -n -o /home/pi/Desktop/timelapse-pi/data/images/$_date.jpg



