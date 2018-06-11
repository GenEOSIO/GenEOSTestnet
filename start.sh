#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/EOS-Jungle-Testnet
#
###############################################################################


NODEOSBINDIR="/home/ivan/geneos/build/programs/nodgeneos"
DATADIR="/home/ivan/opt/GenEOSTestnet/node1"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

$NODEOSBINDIR/nodgeneos --max-irreversible-block-age -1 --data-dir $DATADIR --config-dir $DATADIR "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodgeneos.pid
