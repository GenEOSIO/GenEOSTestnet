#!/bin/bash

################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/EOS-Jungle-Testnet/
#
###############################################################################

NODEOSBINDIR="/home/ivan/geneos/build/programs"
DATADIR="/home/ivan/opt/GenEOSTestnet/programs"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/kgeneosd/kgeneosd --config-dir $DATADIR --wallet-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
