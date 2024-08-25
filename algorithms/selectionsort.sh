#!/usr/bin/env bash

arr=(53 32 62 11 24 74)
function selectionsort(){
    local n=${#arr[@]}
    for (( i = 0; i < n-1; i++)); do
        minIndex=${i}
        for ((j = i+1; j < n; j++)); do
            if (( ${arr[$minIndex]} > ${arr[${j}]}))
            then 
                minIndex=${j}
            fi 
        done
        tmp=${arr[minIndex]}
        arr[minIndex]=${arr[i]}
        arr[i]=$tmp
    done
    echo "after: ${arr[@]}"
}
selectionsort