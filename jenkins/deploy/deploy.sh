#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth karthik@192.168.55.101:/tmp/.auth

scp -i /opt/prod ~/workspace/maven-project/jenkins/deploy/publish.sh karthik@192.168.55.101:/tmp/publish.sh

ssh -i /opt/prod karthik@192.168.55.101 "/tmp/publish.sh"
