#!/bin/bash

#quit the loop when CTRL+C is hit; i.e. don't ignore `SIGEXIT`
trap "exit" INT

#check for argument, if not exists print usage
if [ -z "$1" ]
then
        echo -e 'usage:\t' "$0 port"
        exit
fi

#do the magic loop
while true
do
        nc -lvp $1
done
