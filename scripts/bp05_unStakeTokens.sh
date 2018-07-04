#!/bin/bash

FROM="testaccounta"
TO="testaccountb"
NET="1000.0000 EOS"
CPU="1000.0000 EOS"

./clgeneos.sh system undelegatebw $FROM $TO $NET $CPU -p $FROM
