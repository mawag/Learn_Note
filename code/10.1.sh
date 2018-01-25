#!/bin/bash

#stringZ=1234567890
#echo ${#stringZ}
#echo `expr length $stringZ`
#echo `expr "$stringZ" : '.*'`

MINLEN=30
while read line
do
    echo "$line"

    len=${#line}
    if [[ "$len" -lt "$MINLEN" && "$line" =~ [*{\.}]$ ]]
    # if [[ "$len" -lt "$MINLEN" && "$line" =~ \[*\.\] ]]
        then echo
    fi
done

exit
