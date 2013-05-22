#!/bin/bash

NUMBER_OF_RUNS=100

for i in $(seq 1 $NUMBER_OF_RUNS)
do
    echo "------------------------------------------------ test # $i / $NUMBER_OF_RUNS (start) ----------------------"
    ./_test_version_increase
    if [ "$?" != "0" ]; then
	echo "test return bad code.. will exit now"
	exit 1
    fi
    echo "------------------------------------------------ test # $i / $NUMBER_OF_RUNS (end) ----------------------"
done

echo "all $NUMBER_OF_RUNS successfully completed! all good!"
exit 0
