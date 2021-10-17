# udacity-devops-capstone

This project contains a simple page, which is deployed to a k8s cluster using circleci as CI tool.
Page contains version of a $CIRCLE_WORKFLOW_ID

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

