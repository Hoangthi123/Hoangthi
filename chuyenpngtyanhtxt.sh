#!/bin/bash
mkdir -p video
cd video
mkdir -p "filetxt"
echo "Số file jpg hiện tại của bạn là:"
ls -l ./*.jpg | wc -l
echo "Nhập số file jpg mà bạn muốn tạo:"
read sofile
echo "Nhập độ lớn của ảnh ASCII Art (lưu ý nhập số càng lớn thì ảnh càng nặng và tạo lâu, nên nhập từ 50 đến 100):"
read dolon
for i in $(seq -w 1 "$sofile")
do
    filename=$(printf "image-%03s.jpg" "$i")
    outputfile=$(printf "filetxt/image-%03s.txt" "$i")
    jp2a "$filename" --width="$dolon" > "$outputfile"
done
cd ..
touch txt1.txt
echo "$dolon" > txt1.txt