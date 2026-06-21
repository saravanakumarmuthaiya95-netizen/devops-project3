#!/bin/bash

echo "Deploying container..."

docker stop app || true
docker rm app || true

docker run -d --name app -p 80:80 devops-app:latest
