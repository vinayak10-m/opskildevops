#!/bin/bash
while ! ping -c 1 google.com >/dev/null 2>&1; do
        echo "waiting for internet connection...."
        sleep 5
done
echo "Internet is available"

