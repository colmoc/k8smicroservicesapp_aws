#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=colmoconchuir/houseimg:v1.0.1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-housek8s --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods
kubectl get deployment

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/python-housek8s-55dfc4bfff-9ccv8 --address 0.0.0.0 8000:80
