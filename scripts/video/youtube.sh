#!/bin/bash

# usage: ./youtube [id] [output]

youtube-dl "http://www.youtube.com/watch?v=$1" -o "../tmp/$2.mp4"