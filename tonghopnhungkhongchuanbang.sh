#!/bin/bash
echo "tạo kiểu này sẽ hơi xấu"
mkdir images
mkdir output
mkdir filetxt
file_png="./video"
txt_folder="./filetxt"
image_folder="./images"
output_video="./output/video.mp4"
echo "nhập khung hình trên giây:"
read fps
mkdir -p "$image_folder"
image_width=1080
image_height=1920
background_color="white"
text_color="black"
font_size=17
font_name="DejaVu-Sans-Mono-Bold"
#tạo tệp txt từ ảnhecho "nhập số file png"
bash taoanhtuteptxt.sh
# Lặp qua tất cả các tệp tin văn bản trong thư mục hiện tại
for txt_file in "$txt_folder"/*.txt; do
  base_name=$(basename "$txt_file" .txt)
  image_file="$image_folder/$base_name.png"
  
  convert -size ${image_width}x${image_height} xc:${background_color} -font ${font_name} \
            -pointsize ${font_size} -fill ${text_color} -gravity center -annotate +0+0 "@${txt_file}" ${image_file}
done

ffmpeg -framerate $fps -pattern_type glob -i "$image_folder/*.png" -c:v libx264 -pix_fmt yuv420p "$output_video"