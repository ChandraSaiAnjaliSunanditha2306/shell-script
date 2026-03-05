#!/bin/bash/

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(DATE)

echo "script executed at : $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))

echo "SUM Of $NUMBER1 and $NUMBER2 is : "$SUM""
