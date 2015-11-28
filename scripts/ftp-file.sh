#!/bin/bash

# Upload
ftp -inv $1 > $4.log 2>&1 << EOF
	user $2 $3
	put $4 $(basename $4)
	bye
EOF

# Check output
grep -q "Successfully transferred" $4.log
if [ $? == 0 ]; then
	rm -f $4
	rm -f $4.log
	echo "Successfully uploaded file"
else
	echo "Failed uploading file, see log"
fi

