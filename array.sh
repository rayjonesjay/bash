#!/usr/bin/env bash
arr=('apple' 'mango' 'banana')

#number of elements
echo "${#arr[@]}"
length_of_array="${#arr[@]}"
#add an element into the 'arr' array
arr[length_of_array]='onions'
echo "${arr[@]}"

#print the indexes
echo "${!arr[@]}"

#print the element at index 2
echo "${arr[2]}"