#!/bin/bash

DIR="/home/ivan/geneosTestnet/eosionode"


    if [ -f $DIR"/nodgeneos.pid" ]; then
	pid=`cat $DIR"/nodgeneos.pid"`
	echo $pid
	kill $pid
	rm -r $DIR"/nodgeneos.pid"

	echo -ne "Stoping Nodgeneos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodgeneos Stopped.    \n"
    fi

