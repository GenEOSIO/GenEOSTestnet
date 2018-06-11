#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/EOS-Jungle-Testnet
#
###############################################################################

DIR="/home/ivan/opt/GenEOSTestnet/node1"


    if [ -f $DIR"/nodgeneos.pid" ]; then
	pid=`cat $DIR"/nodgeneos.pid"`
	echo $pid
	kill $pid
	rm -r $DIR"/nodgeneos.pid"

	echo -ne "Stoping Nodeos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodeos Stopped.    \n"
    fi

