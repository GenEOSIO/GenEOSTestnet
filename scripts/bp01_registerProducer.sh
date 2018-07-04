#!/bin/bash

ACCOUNT="newaccounttt"
PUBKEY="GENEOS74wRrQt96rGaEEBNrqWNN4VBebuJGuZrECdBYqLqFCiRzvt3ja"
URL="http://newaccounttt.io"

./clgeneos.sh system regproducer $ACCOUNT $PUBKEY "$URL" -p $ACCOUNT

