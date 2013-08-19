#!/bin/bash

ffmpeg -i "../../tmp/$1.mp4" -vcodec mpeg4 -acodec ac3 -ar 48000 -ab 192k -sameq -y "../../tmp/$1.avi";
rm "../../tmp/$1.mp4"