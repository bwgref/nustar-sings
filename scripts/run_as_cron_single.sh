#!/usr/bin/bash

export PATH=/disk/bifrost/bwgref/local/miniconda3/envs/nustar_grbs/bin/:$PATH
cd /disk/bifrost/bwgref/grb_search

LOGF=long_grb_log.txt
echo `date` > $LOGF
echo Running GRB search >> $LOGF
python nustar_grbs.py 80802346006 >> $LOGF
echo Finished `date` >> $LOGF

./push_slack_grbs.sh $LOGF