#!/usr/bin/bash

export PATH=/disk/bifrost/bwgref/local/miniconda3/envs/nustar_grbs/bin/:$PATH
cd /disk/bifrost/bwgref/grb_search

LOGF=long_grb_log.txt
echo `date` > $LOGF
echo Running GRB search >> $LOGF
python nustar_grbs.py >> $LOGF
echo Finished `date` >> $LOGF

# Check to see if you found anything:

if grep -q "Potential" long_grb_log.txt
then
    ./push_slack_grbs.sh $LOGF
fi
