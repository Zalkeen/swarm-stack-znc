#!/bin/bash

if [[ -z $BOUNCER_VOLUME_DATA && ! -d ./volumes/data ]]; then
  mkdir -p ./volumes/data
  docker run -it --rm \
    -v $PWD/volumes/data:/znc-data \
    znc --makeconf
fi
mkdir -p ./volumes/logs
