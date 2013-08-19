#!/bin/bash

# Usage: ./combine.sh [video id]

ffmpeg -i "../tmp/$1.avi" -i "../tmp/$1.mp3" -vcodec copy -acodec copy -y "../tmp/$1_merged.avi"
rm "../tmp/$1.avi"
rm "../tmp/$1.mp3"
mv "../tmp/$1_merged.avi" "../tmp/$1.avi"