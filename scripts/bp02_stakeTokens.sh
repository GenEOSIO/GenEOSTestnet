#!/bin/bash

FROM="testaccountt"
TO="testaccountt"
NET="1000.0000 EOS"
CPU="1000.0000 EOS"


./clgeneos.sh system delegatebw $FROM $TO "$NET" "$CPU" -p $FROM
