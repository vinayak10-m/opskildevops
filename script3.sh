#!/bin/bash
file=$1
case $file in
        *.txt)
                echo "The given file is text"
                ;;
        *.log)
                echo "The given file is log"
                ;;
        *.tar.gz)
                echo "compressed archived file"
                ;;
        *)
                echo "Unknown file type"
                ;;
esac

