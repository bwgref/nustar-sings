#!/usr/bin/bash

# Check to make sure that you installed slacktee.sh
# If not, then skin this.

#echo $PATH
export PATH=/disk/lif2/bwgref/git/slacktee/:$PATH

outline=""

while IFS='' read -r line || [[ -n $line ]]; do
    outline="${outline}\n${line}"
done < "$1"


echo -e "${outline}" | slacktee.sh -c nustar-sings >> /dev/null

