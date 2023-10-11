#!/bin/bash

echo "**********************"
echo "** Testing the code ******"
echo "**********************"

WORKSPACE=/home/yevhenii/Desktop/jenkins-data/jenkins_home/workspace/pipeline-docker-maven@script

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2  -w /app maven "$@"
