#!/bin/bash

sum=0
cnt=0

for score in "$@"
do
    if [ $score -ge 90 ]; then
        echo "$score : A"
    else
        echo "$score : B"
    fi
    sum=$((sum + score))
    cnt=$((cnt + 1))
done

avg=$((sum / cnt))

if [ $avg -ge 90 ]; then
    echo "평균 등급 : A ($avg점)"
else
    echo "평균 등급 : B ($avg점)"
fi
