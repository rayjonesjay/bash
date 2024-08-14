#!/usr/bin/env bash

# import the math.sh package
source math.sh

# test addition
result=$(add 4 5 9 1) # output -> 9
echo "4 + 5 + 9 + 1 = $result"

# test sub
result=$(sub 9 6)
echo "9 - 6 = $result"

# test division
result=$(div 8 0)
echo "8 / 0 = $result"

# test multiplication
echo "9 * 2 * 3 = $(mul 9 2 3)"
