#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then 
    echo "Given number $NUMBER is greater than 10"
else
    echo "Given number $NUMBER is less than 10"
fi

# -gt(greaterthan), -lt (less than), -eq (equal to), -ge (greaterthan equal to), -le (lessthan equal to)