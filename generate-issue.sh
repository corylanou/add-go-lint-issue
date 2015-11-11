#!/bin/bash

filename=$1
project=$2

cat ./issue-template.md > $filename
./lint.sh $2 >> $filename


