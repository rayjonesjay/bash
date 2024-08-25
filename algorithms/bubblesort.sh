#!/usr/bin/env bash

arr=(4 3 2 1 6 9)
echo "before: ${arr[@]}"
function bubblesort() {
    local len="${#arr[@]}"
    echo "$len"
    for (( i = 0; i < len-1; i++)); do
        for (( j = 0; j < len-i-1; j++)); do 
            if (( ${arr[$j]} > ${arr[$((j + 1))]} ))
            then
                tmp=${arr[j]}
                arr[j]=${arr[$((j+1))]}
                arr[$((j+1))]=$tmp
            fi
        done
    done
    echo "after: ${arr[@]}"
}

bubblesort