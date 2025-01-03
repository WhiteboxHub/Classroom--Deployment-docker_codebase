# Common Docker Pull Commands

## Basic Pull Commands
# Pull an image from Docker Hub
docker pull <image_name>:<tag>

# Pull latest tag
docker pull <image_name>

# Pull specific version
docker pull <image_name>:1.0

## Pull from Private Registry
# Login to private registry
docker login <registry_url>

# Pull from private registry
docker pull <registry_url>/<image_name>:<tag>

## Examples
# Pull Ubuntu 20.04
docker pull ubuntu:20.04

# Pull latest nginx
docker pull nginx

# Pull from private registry example
docker pull myregistry.azurecr.io/myapp:1.0

## Managing Pulled Images
# List downloaded images
docker images

# Remove pulled image
docker rmi <image_name>:<tag>

# Remove all unused images
docker image prune

## Best Practices
# Always specify image tags for version control
# Clean up unused images regularly
# Use private registries for sensitive images
# Verify image checksums for security
# Cache commonly used images locally
