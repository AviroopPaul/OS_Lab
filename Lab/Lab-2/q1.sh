#!/bin/sh

echo "Enter time in seconds: "
read sec

hr=`expr $sec / 3600`
min=`expr \( $sec % 3600 \) / 60`
secs=`expr \( $sec % 60 \)`
	
echo "Time in H:M:S"
echo "$hr : $min : $secs"

