#!/bin/bash

VOTER="testaccounta"
VOTEFOR="testaccounta testaccountb"

./clgeneos.sh system voteproducer prods $VOTER $VOTEFOR -p $VOTER
