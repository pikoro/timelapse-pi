#!/bin/bash

IMAGE_DIR="/home/pi/Desktop/timelapse-pi/data/images/*.jpg"

# Take pic
bash /home/pi/Desktop/timelapse-pi/scripts/take-picture.sh

# Upload image directory
for file in $IMAGE_DIR
do
	echo "Working on...$(basename $file)"
	bash /home/pi/Desktop/timelapse-pi/scripts/ftp-file.sh $file
	rm -f $file
done



