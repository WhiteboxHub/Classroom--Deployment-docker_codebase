# Common Docker Pull Commands

## Basic Pull Commands
# Pull an image from Docker Hub
```bash
docker pull <image_name>:<tag>
```

# Pull latest tag
```bash
docker pull <image_name>
```

# Pull specific version
```bash
docker pull <image_name>:1.0
```

## Pull from Private Registry
# Login to private registry
```bash
docker login <registry_url>
```

# Pull from private registry
```bash
docker pull <registry_url>/<image_name>:<tag>
```

## Examples
# Pull Ubuntu 20.04
```bash
   docker pull ubuntu:20.04
```

# Pull latest nginx
```bash
   docker pull nginx
```

# Pull from private registry example
```bash
   docker pull myregistry.azurecr.io/myapp:1.0
```

## Managing Pulled Images
# List downloaded images
```bash
   docker images
```

# Remove pulled image
```bash
            docker rmi <image_name>:<tag>
```

# Remove all unused images
```bash
   docker image prune   
```

## Best Practices
# Always specify image tags for version control
# Clean up unused images regularly
# Use private registries for sensitive images
# Verify image checksums for security
# Cache commonly used images locally
