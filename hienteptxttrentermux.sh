#!/bin/bash
echo "hãy phóng to màn hình"
cd video/filetxt
sleep 5
for file_name in *.txt; do
    cat "$file_name"
    sleep 0.03
    clear
done
cd ..
cd ..