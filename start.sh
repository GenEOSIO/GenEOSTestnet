#!/bin/bash

NODEOSBINDIR="/home/ivan/geneos/build/programs/nodgeneos"
DATADIR="/home/ivan/geneosTestnet/node"

$DATADIR/stop.sh
echo -e "Starting Nodgeneos \n";

ulimit -s 64000

$NODEOSBINDIR/nodgeneos --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodgeneos.pid
