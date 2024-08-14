#!/usr/bin/env bash

# add can compute addition of more than 2 arguments
function add() {
	args="$@"
	local sum=0
	for num in $args; do
			sum=$((sum + num))
	done
	echo "$sum"
}

# sub computes subtraction of $1 and $2 
function sub(){
	local result=0
	result=$(($1 - $2))
	echo "$result"
}

# mul can compute the product of more than 2 arguments
function mul(){
	local product=1 # initialized to 1 , if zero result will be zero.
	for n in "$@"; do 
		product=$((product * n))
	done
	echo "$product"
}

# div computes division of $1 and $2 and handles division by zero error
function div(){
	if [ $2 -eq 0 ]; then
		echo "ZeroDivisionError: division by zero"
		return 1
	fi
	echo "$(( $1 / $2 ))"
}