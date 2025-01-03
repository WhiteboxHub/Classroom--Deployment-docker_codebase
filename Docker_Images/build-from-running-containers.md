# Building from a Running Container

## Introduction

Building a Docker image from a running container can be useful when you have made changes to a container and want to save those changes as a new image. This process involves committing the changes in the container to a new image.

## Steps to Build from a Running Container

### 1. Identify the Running Container

First, you need to identify the running container from which you want to build a new image. You can list all running containers using the following command:

```bash
docker ps
```         

This command will display a list of all running containers, including their container ID, image name, and other relevant information.

### 2. Commit Changes to a New Image

Once you have identified the running container, you can commit the changes to a new image using the following command:

```bash
docker commit <container_id> <new_image_name>:<tag>
```

This command will create a new image from the changes made in the specified container. The new image will include all the changes made to the container since it was last started or committed.

### 3. Verify the New Image

After creating the new image, you can verify its existence using the following command:

```bash
docker images
``` 

This command will display a list of all images, including the newly created image.

## Conclusion

Building a Docker image from a running container is a useful technique for capturing and preserving changes made to a container. By following these steps, you can create a new image from the changes made in a running container and verify its existence.
