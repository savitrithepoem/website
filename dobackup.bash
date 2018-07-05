#!/bin/bash

if [ $# != 1 ]; then
	echo "usage: dobackup.bash <backup file name>"
	exit 1
fi

tar cvzf ../$1 --exclude-from exclude_files .

if [ $? -eq 0 ]; then
    echo ""
    echo "###### data saved to file ../$1 ######"
    echo ""
fi

