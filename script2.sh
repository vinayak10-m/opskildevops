#!/bin/bash
os=$(uname)
case $os in
        Linux)
                echo "Running on Linux"
                ;;
        Darwin)
                echo "Running on macos"
                ;;
        *)
                echo "Unknown OS"
                ;;
esac
