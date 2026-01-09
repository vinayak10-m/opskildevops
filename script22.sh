#!/bin/bash
status=$(ls -lrt)
echo "status is : $status"

#!/bin/bash
status=$(awk -F " " '{print $1}' file1)
echo "status is : $status"

