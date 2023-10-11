#!/bin/bash


echo "********************"
echo "**  pushing image **"
echo "********************"

IMAGE="maven-project"

echo "** Logging in **"
docker login -u 20091409 -p $PASS

echo "** Tagging image **"
docker tag $IMAGE:$BUILD_TAG 20091409/$IMAGE:$BUILD_TAG

echo "**  Pushing image **"
docker push  20091409/$IMAGE:$BUILD_TAG

