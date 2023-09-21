#!/bin/bash

# GATEWAY
echo ""
echo "Building DOCKER image for gateway."
echo ""
docker build -t gateway-service .

echo ""
echo "Deploying/Running DOCKER image for gateway."
echo ""

docker run -d --env-file config/.env.dev --name=commerce-gateway-service --net=commerce-net -p 8000:8000 --restart unless-stopped gateway-service

echo ""
echo "Done.."
echo ""
