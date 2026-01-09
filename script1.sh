#/bin/bash
i=2
for (( counter=1; counter<=10; counter++ )); do
        ((result = $i * $counter))
        echo "$i x $counter = $result"
done

