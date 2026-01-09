#!/bin/bash
count=5
while [ $count -gt 0 ]; do
        echo "Waiting....$count"
        sleep 1
        count=$((count - 1))
done
echo "Done"

