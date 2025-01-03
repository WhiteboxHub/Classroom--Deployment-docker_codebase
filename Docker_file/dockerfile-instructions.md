# Dockerfile Instructions

A Dockerfile is a script that contains a series of instructions on how to build a Docker image. Below are the common instructions and concepts used in a Dockerfile.

## Basic Dockerfile Structure

1. **`FROM`**: Specifies the base image to use for the Docker image.
2. **`LABEL`**: Adds metadata to the image.
3. **`RUN`**: Executes commands in the container.
4. **`COPY`**: Copies files from the host to the container.
5. **`ADD`**: Similar to COPY but also supports URLs and tar file extraction.
6. **`WORKDIR`**: Sets the working directory for subsequent instructions.
7. **`ENV`**: Sets environment variables.
8. **`EXPOSE`**: Informs Docker that the container listens on the specified network ports.
9. **`CMD`**: Provides the command to run within the container.
10. **`ENTRYPOINT`**: Configures a container that will run as an executable.

## Example Dockerfile

```dockerfile
FROM ubuntu:latest
LABEL maintainer="John Doe <john.doe@example.com>"
RUN apt-get update && apt-get install -y nginx
COPY . /var/www/html
WORKDIR /var/www/html
ENV NGINX_PORT=80
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
    ```

## Best Practices

- Always specify image tags for version control
- Clean up unused images regularly
- Use private registries for sensitive images
- Verify image checksums for security
- Cache commonly used images locally
