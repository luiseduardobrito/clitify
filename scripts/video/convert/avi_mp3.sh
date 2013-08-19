#!/bin/bash
# Usage: ./avi_mp3.sh [file]

ffmpeg -i "../../tmp/$1.avi" "../../tmp/$1.mp3" -y;