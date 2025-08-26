#!/usr/bin/env bash
#

mvn clean package

docker build -t shade:3 .
mkdir -p phase3
docker save shade:3 > phase3/thing3.what
