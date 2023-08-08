#!/bin/bash
mkdir -p videomp4
dorongcu=$(cat txt2.txt)
docaocu=$(cat txt3.txt)
fpscu=$(cat txt4.txt)
tenvideo=$(cat txt5.txt)
echo "Nhập độ rộng của video:"
echo "(Thông số độ rộng thực tế video của bạn: $dorongcu)"
read rong
echo "Nhập độ cao của video:"
echo "(Thông số chiều cao thực tế video của bạn: $docaocu)"
read cao
echo "Nhập số khung hình trên giây của video (fps):"
echo "(Thông số fps hay khung hình thực tế trên giây của bạn: $fpscu)"
read khunghinh
image_folder="video/output"  # Thư mục chứa các tệp tin ảnh
output_video="videomp4/$tenvideo"  # Tên và đường dẫn tới tệp tin video đầu ra
fps=$khunghinh  # Số khung hình trên giây (FPS) của video
video_width=$rong  # Độ rộng của video
video_height=$cao  # Độ cao của video

# Gộp các tệp tin ảnh thành video bằng ffmpeg
ffmpeg -framerate "$fps" -pattern_type glob -i "$image_folder/*.png" -s "${video_width}x${video_height}" -c:v libx264 -pix_fmt yuv420p "$output_video"
