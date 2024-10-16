#!bin/bash

################################
## Solution for home.....

## Step 01: Install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

## Step 02: Start Minikube

# We can set minikube to start with X cpus & X memory 
# by passing on --cpus & --memory 
minikube start



