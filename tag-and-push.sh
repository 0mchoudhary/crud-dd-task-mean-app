#!/bin/bash

# Default tag to a timestamp if no argument is provided
TAG=${1:-$(date +%Y%m%d-%H%M)}

echo "Building and pushing images with tag: $TAG"

# Export TAG so docker-compose can use it
export TAG=$TAG

# Build the images
docker compose build

# Push the images
docker compose push

echo "Successfully built and pushed versions with tag: $TAG"
