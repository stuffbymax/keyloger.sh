#!/bin/bash

LOGFILE="keylog.txt"

> $LOGFILE

DEVICE_ID=13  # Your keyboard id from xinput list

echo "Logging keypresses from device ID $DEVICE_ID to $LOGFILE. Press Ctrl+C to stop."

xinput test $DEVICE_ID | while read -r line; do
    echo "$line" >> $LOGFILE
done
