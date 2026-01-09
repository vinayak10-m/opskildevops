#!/bin/bash
set -x
echo -n "Enter any number:"
read n
if [[ $n -eq 15  || $n -eq 45 ]]; then
        echo "The build success....!"
else
        echo "build failed.....!"
fi
