#!/bin/bash

# Usage: ./insert.sh [1: unique_id] [2: text] [3: start] [4: end]

# prepare log file
echo "" &> "logs/$1.out"

# get mp3 from video
cd "video/convert/"
echo "Extracting audio from AVI file..."
./avi_mp3.sh $1 &> "../../logs/$1.out"
cd "../../"

# split sound in specified position
echo "Splitting audio from AVI file..."
cd "audio/"
./strip.sh $1 $3 $4 &> "../logs/$1.out"

# get mp3 of text
echo "Convert input text to MP3 using Google Translate (pt-br)..."
./tts.sh $2 &> "../logs/$1.out"

# insert text in audio
echo "Inserting audio into video demuxed MP3..."
./join.sh $1 $2 &> "../logs/$1.out"
cd "../"

# combine audio and video file
echo "Overwriting audio with generated MP3..."
cd "video/"
./combine.sh $1 &> "../logs/$1.out"

echo "Done! (id: $1)"
