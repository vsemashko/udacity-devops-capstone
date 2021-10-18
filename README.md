[![CircleCI](https://circleci.com/gh/vsemashko/udacity-devops-capstone.svg?style=svg)](https://app.circleci.com/pipelines/github/vsemashko/udacity-devops-capstone)


# udacity-devops-capstone

This project contains a simple page, which is deployed to a k8s cluster using circleci as CI tool.
Page contains version of a $CIRCLE_WORKFLOW_ID

Service url: http://aa8da2d38655243eca783d675775f61b-1635727752.us-east-2.elb.amazonaws.com:8080/

## install
You'll need a python of version 3.7.3

build file with desired version
```export PROJECT_VERSION=version && make all```
modify 'dockerpath' variable in build_docker.sh to contain correct repository and run
```
chmod +x ./build_docker.sh
./build_docker.sh
```
It will build docker image and upload it into repository

## CI build pipeline

![](screenshots/udacity_devlops_capstone_pipeline.png#resize50) 

Cluster is 