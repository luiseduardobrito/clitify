#!/bin/bash

# Usage: ./strip.sh [file] [start] [end]

ffmpeg -i "../tmp/$1.mp3" -vn -acodec copy -ss 00:00:00 -t "$2" "../tmp/$1_1.mp3"
ffmpeg -i "../tmp/$1.mp3" -vn -acodec copy -ss "$3" "../tmp/$1_2.mp3"
rm "../tmp/$1.mp3"