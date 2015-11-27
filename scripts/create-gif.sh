#!/bin/bash          

# TODO: Validate input

# Usage:
#	bash create-gif.sh [input-dir] [output-filename-prefix] [image-width] [delay]
# 	bash create-gif.sh /root/dir/image-files new-gif 640 15
#
# Note: Input dir should not have trailing slash

# Verbose execution
# set -x

# Set defaults
defaultSize=$3

# Create temp directory
dirToProcess="$1"
tempDir="$1-temp"
mkdir "$tempDir"

# Copy files to temp dir
cp -r "$dirToProcess/." "$tempDir"

#Resize images
dir="$tempDir/*"
for i in $dir;
do 
	sips -Z $defaultSize $i;
done

# Convert images to GIF
dir="$tempDir/*"
for i in $dir; 
do 
	sips -s format gif $i --out "$i.gif";
	rm $i;
done

# Convert images to animated GIF
dir="$tempDir/*"
gifsicle --delay $4 --loopcount=forever $dir > "$2-$3-$4.gif"

# Cleanup
rm -r "$tempDir"
