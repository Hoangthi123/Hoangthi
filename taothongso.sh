#!/bin/bash
luuvideo=$(cat txt5.txt)
video_file="video/$luuvideo"

ffprobe_output=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height,r_frame_rate -of default=noprint_wrappers=1:nokey=1 "$video_file")

width=$(echo "$ffprobe_output" | awk 'NR==1{print $0}')
height=$(echo "$ffprobe_output" | awk 'NR==2{print $0}')
fps=$(echo "$ffprobe_output" | awk 'NR==3{print $0}')

echo "Width: $width" > txt2.txt
echo "Height: $height" > txt3.txt
echo "FPS: $fps" > txt4.txt