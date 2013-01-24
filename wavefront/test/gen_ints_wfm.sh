#!/bin/sh

N=${1:-10}

filename="test.wmaster.input"

I=0

[[ -f ${filename} ]] && rm ${filename}

while [[ $I -lt $N ]]; do
		echo "$I 0 $I" >> ${filename}
		echo "0 $I $I" >> ${filename}
		I=$(($I + 1))
done


