#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
parentdir="$(dirname "$DIR")"
sudo chown -R ubuntu:ubuntu /home/ubuntu/testcodedeploy
demopid=$(pidof java)
kill -9 $demopid
rm -rf /home/ubuntu/testcodedeploy/revision.txt
cp $parentdir/demo-0.0.1-SNAPSHOT.jar /tmp/demo-0.0.1-SNAPSHOT.jar
java -jar /tmp/demo-0.0.1-SNAPSHOT.jar > /tmp/logs.txt  2>&1 &
