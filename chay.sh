#!/bin/bash

while true; do
    echo "Menu:"
    echo "1) Tạo video ASCII Art nhưng hơi nhỏ"
    echo "2) Tạo video ASCII Art"
    echo "3) Thoát"
    echo "4) hiện thị tệp txt trên termux "
    read -p "Nhập lựa chọn của bạn: " choice

    case $choice in
        1)
            echo "Tạo video tổng hợp..."
            # Thêm các lệnh của bạn để tạo video tổng hợp
            bash bienvideothanhanh.sh
            bash tonghopnhungkhongchuanbang.sh
            ;;
        2)
            echo "Tạo video ASCII Art..."
            # Thêm các lệnh của bạn để tạo video ASCII Art
            bash bienvideothanhanh.sh
            bash taothongso.sh
            
            bash chuyenpngtyanhtxt.sh
            bash taoanhtuteptxt.sh
            
            
            bash taovideobangpng.sh
            
            
            echo "lưu file video"
            read luufile
            cp ./videomp4/video.mp4 $luufile
            rm txt1.txt
            rm txt2.txt
            rm txt3.txt
            rm txt4.txt
            rm txt5.txt
            rm -r video
            clear
            ;;
        3)
            echo "Thoát."
            break
            ;;
        4)
            bash bienvideothanhanh.sh
            bash chuyenpngtyanhtxt.sh
            bash hienteptxttrentermux.sh
            ;;
           
        *)
            echo "Lựa chọn không hợp lệ. Vui lòng chọn lại."
            ;;
    esac

    echo
done
