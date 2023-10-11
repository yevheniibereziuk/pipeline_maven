#!/bin/bash

# Copy the new jar to the build location

cp -f java-app/target/*.jar jenkins/build/

echo "*** Building docker images *******"

cd jenkins/build/ && docker-compose -f docker-compouse-build.yml build --no-cache
