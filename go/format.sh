#!/usr/bin/env bash

# program: format.sh
# function: check if all go files in a directory are properly formatted using gofmt tool.

function fmt(){
    local path=$1
    if [ -z ${path} ]
    then
        echo "please provide path"
        echo "USAGE: $ ./format path_to_go_files"
        exit 1
    fi
    unformatted_files=$(find ${path} -name '*.go')
    if [ -z ${unformatted_files} ]
    then
        echo "no go files were found in the specified path"
        exit 1
    fi
    if [ -n "${unformatted_files}" ]; then
    echo "the following files are not formatted:"
    echo "$unformatted_files"
    exit 1
    else
        echo "all go files are formatted correctly"
        exit 0
    fi
}

fmt $1
