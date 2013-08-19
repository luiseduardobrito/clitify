#!/bin/bash

# Usage: ./join.sh [video id] [text]

cat "../tmp/$1_1.mp3" "../tmp/$2.mp3"  "../tmp/$1_2.mp3" >  "../tmp/$1.mp3"
rm "../tmp/$1_1.mp3"
rm "../tmp/$1_2.mp3"
rm "../tmp/$2.mp3"
