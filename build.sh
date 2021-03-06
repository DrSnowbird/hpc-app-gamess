#!/bin/bash 

# Reference: 
# - https://docs.docker.com/engine/userguide/containers/dockerimages/
# - https://github.com/dockerfile/java/blob/master/oracle-java8/Dockerfile

# example:
#  docker build -t openkbs/pp-hpc-gamess .

imageTag=openkbs/app-hpc-gamess

docker build -t ${imageTag} -f Dockerfile .

echo "----> To run in interactive mode: "
echo "  docker run --name <some-name> -it ${imageTag}:${version} /bin/bash"
echo "e.g."
echo "  docker run it ${imageTag}:${version} "
echo "  docker run --name "my-$(basename $imageTag)_${version}" -it ${imageTag}:${version} "

echo "----> Docker Images"
echo "To build again: (there is a dot at the end of the command!)"
echo "  docker build -t ${imageTag}:$version -t ${imageTag}:latest . "
echo
docker images |grep "$imageTag"

