#!/bin/bash

# Include config file
source config.cfg

# Exit if disabled
if [ $CFG_ENABLED != 1 ]; then
	if [ "$1" != "enable" ]; then
		echo "Disabled, exiting..."
		exit
	fi
fi 
let x=1
while [ $x < $CFG_TIMELAPSE_DURATION ]
do
	# Take pic
	bash ./take-picture.sh $CFG_IMAGE_DIR

	# Upload image directory
	for file in $CFG_FTP_UPLOAD_FILES
	do
		echo "Working on...$(basename $file)"
		bash ./ftp-file.sh $CFG_FTP_SERVER $CFG_FTP_USER $CFG_FTP_PASS $file
	
		# TODO: Check success of FTP before deleting
		rm -f $file
	done

  sleep $CFG_IMAGE_INTERVAL
  $x=$x + $CFG_IMAGE_INTERVAL
done



