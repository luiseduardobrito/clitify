#!/bin/bash

# Usage: ./tts.sh [text]

wget -q -U Mozilla -O "../tmp/$1.mp3" "http://translate.google.com/translate_tts?ie=UTF-8&q=$1&tl=pt&"
#ffmpeg -t -0.3 -acodec copy -i "../tmp/$1.mp3" "../tmp/$1.mp3" -y;
sox "../tmp/$1.mp3" "../tmp/$1.mp3" silence 1 0.1 0.1% reverse silence 1 0.1 0.1% reverse