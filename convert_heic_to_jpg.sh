#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null
then
    echo "ImageMagick is not installed. Please install it using: sudo apt install imagemagick"
    exit
fi

# Loop through all .heic files in the current directory
for file in *.HEIC; do
    if [ -f "$file" ]; then
        # Get the filename without extension
        filename_noext="${file%.*}"

        # Convert .heic to .jpg using convert
        convert "$file" "${filename_noext}.jpg"

        echo "Converted ${file} to ${filename_noext}.jpg"
    fi
done

echo "Conversion completed."
