#!/bin/bash
set -a
source .env-nfs
set +a
FILES=pre/*.yaml
for f in $FILES
do
	envsubst < $f > build/$(basename $f)
done