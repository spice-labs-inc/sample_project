#!/usr/bin/env bash
#

mvn clean package

docker build -t shade:1 .
mkdir -p phase1
docker save shade:1 > phase1/thing1.what
