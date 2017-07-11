#!/bin/bash
while true
do
    ps -ef|grep -v grep|grep poker_ai
    if [ $? -ne 0 ]; then
        ./game-pro/poker_ai/cmake-build-debug/poker_ai
    fi
    sleep 10
done
