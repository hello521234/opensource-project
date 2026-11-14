#!/bin/bash

echo "1) 사용자 정보"
echo "2) GPU 또는 CPU 사용률 확인"
echo "3) 메모리 사용량 확인"
echo "4) 디스크 사용량 확인"
read -p "선택: " num

case $num in
    1)
        whoami
        ;;
    2)
        top -n 1
        ;;
    3)
        free -h
        ;;
    4)
        df -h
        ;;
esac
