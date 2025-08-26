#!/usr/bin/env bash
#

mvn clean package

docker build -t shade:2 .
mkdir -p phase2
docker save shade:2 > phase2/thing2.what
