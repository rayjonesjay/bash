#!/usr/bin/env bash

# import the math.sh file for testing
. math.sh
. shunit2

# test add function
function test_add() {
    local expected_result=8
    local returned_result=$(add 5 3)

    if [[ "$returned_result" -eq "$expected_result" ]]; then
        echo "add()-----PASS-----"
    else
        echo "FAIL: Expected $expected_result , Got ${returned_result}"
    fi
}

# test subtraction function
function test_sub() {
    assertEquals 5 "$(sub 7 2)" # 7 - 2 = 5
    assertEquals 15 "$(sub 20 - 5)" # 20 - 5 = 15
}

test_add
test_sub

