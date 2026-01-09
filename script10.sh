
#!/bin/bash
set -x
echo -n "Enter a number: "
read file_size
if [[ $file_size -ge 0 && $((file_size % 2)) -eq 0 ]]; then 
	echo "The given number is even"
else
	echo "The given number is add"
fi

