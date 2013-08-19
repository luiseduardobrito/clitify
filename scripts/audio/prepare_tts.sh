#!/bin/bash

# Usage: ./prepare_tts.sh [file]

sox inputfile.mp3 outputfile.mp3 silence 1 0.1 0.1% reverse silence 1 0.1 0.1% reverse