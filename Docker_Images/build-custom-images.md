# Common Docker Image Build Commands

## Basic Build Commands
# Build an image from a Dockerfile in current directory
```bash
   docker build -t <image_name>:<tag> .
```

# Build with no cache (forces fresh build)
```bash
   docker build --no-cache -t <image_name>:<tag> .
```

# Build from specific Dockerfile
```bash
   docker build -f path/to/Dockerfile -t <image_name>:<tag> .
```

## Build with Build Arguments
# Pass build arguments
```bash
   docker build --build-arg VAR_NAME=value -t <image_name>:<tag> .
```

## Examples
# Basic build example
```bash
   docker build -t my_app:1.0 .
```

# Build with multiple tags
```bash
   docker build -t my_app:latest -t my_app:1.0 .
```

# Build with build args example
```bash
   docker build --build-arg NODE_ENV=production -t my_app:prod .
```

## Managing Images
# List all images
```bash
   docker images
```

# Remove an image
```bash
   docker rmi <image_name>:<tag>
```

# Remove all unused images
```bash
   docker image prune

# Tag an existing image
```bash
   docker tag <source_image>:<tag> <target_image>:<tag>
```

## Best Practices
# Always tag your images with specific versions
# Use .dockerignore to exclude unnecessary files
# Keep images small by minimizing layers
# Use multi-stage builds for production images

