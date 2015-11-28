#!/bin/bash

_date=$(date +"%Y-%m-%d_%H%M")

echo "Taking picture..."
raspistill -n -o $1/$_date.jpg
echo "Picture saved to $1/$_date.jpg"

