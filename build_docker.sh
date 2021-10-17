#!/usr/bin/env bash

version=$1
if [[ -z "$version" ]]; then
  version=latest
fi

dockerpath=452262056249.dkr.ecr.us-east-2.amazonaws.com/udacity-devops-capstone:$version


docker build --tag=udacity-devops-capstone .
docker image ls

docker tag udacity-devops-capstone $dockerpath
echo "Docker ID and Image: $dockerpath"

docker push $dockerpath
