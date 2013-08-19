#!/bin/bash

# Usage: ./get_video.sh [1: unique_id] [2: youtube_id]

# prepare log file
echo "" &> "logs/$1.out"

# download youtube video
cd "video/"
echo "Downloading video from youtube..."
./youtube.sh $2 $1 &> "../logs/$1.out"

# convert to avi
echo "Converting video to AVI..."
cd "convert/" 
./mp4_avi.sh $1 &> "../../logs/$1.out"