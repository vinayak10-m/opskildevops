#!/bin/bash
dirs="/etc /var/log /home"
for dir in $dirs; do
        tar -czf $(basename $dir).tar.gz $dir
        echo "Backup completed for $dir"
done
`
