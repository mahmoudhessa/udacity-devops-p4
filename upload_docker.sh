#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=mahmoudhassan94/udacity_devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat my_password.txt | docker login --username=mahmoudhassan94 --password-stdin
docker tag udacity_devops mahmoudhassan94/udacity_devops


# Step 3:
# Push image to a docker repository
docker push mahmoudhassan94/udacity_devops