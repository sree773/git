#! /bin/bash

echo "************"
echo "****push****"
echo "************"
IMAGE="maven-project"
echo "************"
echo "***docker login****"
echo "************"
docker login -u sree773 -p $PASS
echo "************"
echo "***tagging****"
echo "************"
docker tag $IMAGE:$BUILD_TAG sree773/$IMAGE:$BUILD_TAG
echo "************"
echo "***docker pushing****"
echo "************"
docker push sree773/$IMAGE:$BUILD_TAG


