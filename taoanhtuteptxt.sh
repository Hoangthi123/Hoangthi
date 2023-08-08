#!/bin/bash
so=$(cat txt1.txt)
cd video
mkdir -p output
cd filetxt
dolon=$(expr 1700 / "$so")
image_width=1080
image_height=1920
background_color="white"
text_color="black"
font_size="$dolon"
font_name="DejaVu-Sans-Mono-Bold"

for txt_file in *.txt; do
    image_file="../output/${txt_file%.txt}.png"

    convert -size ${image_width}x${image_height} -background ${background_color} -fill ${text_color} -font ${font_name} \
            -pointsize ${font_size} -gravity center label:@"${txt_file}" "${image_file}"
    echo "${txt_file} thành ${txt_file%.txt}.png xong!"
done
cd ..
cd ..