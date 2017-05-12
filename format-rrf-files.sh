#!/bin/bash

mkdir ./rrf
for i in `ls *.RRF`; do
  cat $i | sed 's/|$//g' | sed 's/\\|/|/g' > ./rrf/$i
done
