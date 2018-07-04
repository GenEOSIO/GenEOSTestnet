#!/bin/bash

NODEOSBINDIR="/home/ivan/geneos/build/programs"
DATADIR="/home/ivan/geneosTestnet/node"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/kgeneosd/kgeneosd --config-dir $DATADIR --wallet-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
