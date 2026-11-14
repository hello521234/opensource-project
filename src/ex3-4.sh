#!/bin/bash

scores=()
sum=0
cnt=0

while true
do
    echo "==================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "==================="
    read -p "입력: " menu

    case $menu in
        1)
            read -p "점수 입력: " s
            scores+=($s)
            sum=$((sum + s))
            cnt=$((cnt + 1))
            ;;
        2)
            echo "전체 점수: ${scores[@]}"
            ;;
        3)
            avg=$((sum / cnt))
            echo "평균 점수: $avg"
            ;;
        4)
            avg=$((sum / cnt))
            if [ $avg -ge 90 ]; then
                echo "평균 등급: A"
            else
                echo "평균 등급: B"
            fi
            ;;
        5)
            echo "종료"
            break
            ;;
    esac
done
