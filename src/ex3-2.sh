#!/bin/bash
# 명령줄 인자로 받거나, 인자가 없으면 직접 입력받도록 구현
if [ $# -ge 2 ]; then
    inputs="$@"
else
    read -p "2개 이상의 x값을 공백으로 구분해 입력하세요: " inputs
fi

for x in $inputs; do
    y=$(echo "scale=2; 0.5 * $x * $x" | bc)
    echo "x = $x, y = $y"
done
