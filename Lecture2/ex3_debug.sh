 #!/usr/bin/env bash

for ((count=1;;count++))
do
    ./ex3.sh 2> ex3_error.log 1> ex3.log
    #  ($?) Expands to the exit status of the most recently executed foreground pipeline.
    if [[ $? -ne 0 ]]; then
        echo "Failed after $count times"
        cat ex3.log ex3_error.log
        break
    echo "$count try"
    fi
done
