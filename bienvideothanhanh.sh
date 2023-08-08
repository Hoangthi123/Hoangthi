#!/bin/bash
echo "nhập đường dẫn tệp tin của bạn vd:/sdcard/download,v.v"
read duongdan
echo "nhập tên video vd:video.mp4,.v.v"
read video
mkdir -p video
cd video
cp "$duongdan"/"$video" .
ffmpeg -i $video image-%03d.jpg
cd ..
touch txt5.txt
echo "$video" > txt5.txt