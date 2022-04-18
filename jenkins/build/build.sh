#! /bin/bash

cp -f java-app/target/*.jar jenkins/build/

echo "***********************"
echo "*Building docker image*"
echo "***********************" 

cd jenkins/build/ && docker-compose build --no-cache
