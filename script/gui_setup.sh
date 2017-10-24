#!/bin/bash
for i in stroll_bearnav/navigator stroll_bearnav/loadMap rqt_reconfigure /navigationMatches
do 
while [ $(wmctrl -l |grep $i -c) == 0 ]; 
	do sleep 1; 
	echo Waiting for $i;
done
wmctrl -a $i -b add,above
done
mplayer $(rospack find stroll_bearnav)/data/nominal.wav
