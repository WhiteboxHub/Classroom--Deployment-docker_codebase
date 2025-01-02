# Listing Docker Images

This document provides a comprehensive guide to listing Docker images on your local machine. Understanding how to view and manage your Docker images is essential for maintaining an organized and efficient Docker environment.

## Table of Contents
1. [Introduction](#introduction)
2. [Listing All Docker Images](#listing-all-docker-images)
3. [Understanding the Output](#understanding-the-output)
4. [Filtering Images](#filtering-images)
5. [Best Practices](#best-practices)
6. [Conclusion](#conclusion)

## 1. Introduction

Docker images are the building blocks of containerized applications. They contain all the necessary components to run an application, including the code, runtime, libraries, and configuration files. Listing Docker images allows you to view and manage the images available on your local machine, ensuring that you can efficiently utilize and organize your Docker environment.

## 2. Listing All Docker Images

To see all Docker images on your local machine, you can use the `docker images` command. This command displays a list of all Docker images stored locally, along with relevant information about each image.

**Example**:

```bash
docker images
```

This command lists all Docker images available on your local machine. The output includes details such as the repository, tag, image ID, creation date, and size of each image

## 3.  Understanding the Output

The output of the docker images command provides valuable information about each Docker image. Here is a breakdown of the columns typically displayed:

REPOSITORY: The name of the repository from which the image was pulled.
TAG: The tag assigned to the image, which often represents the version.
IMAGE ID: A unique identifier for the image.
CREATED: The date and time when the image was created.
SIZE: The size of the image.

## 5. Example


REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
nginx               latest              79e1dc0be096        2 weeks ago         133MB
ubuntu              20.04               3420d254c2d0        3 weeks ago         72.9MB
myapp               1.0                 a1b2c3d4e5f6        4 weeks ago         500MB


This output shows three Docker images: nginx with the latest tag, ubuntu with the 20.04 tag, and myapp with the 1.0 tag. Each image has a unique ID, creation date, and size.

## Filtering Images

ou can filter the list of Docker images to display only specific images based on certain criteria. This can be useful for managing and organizing your images more effectively

## Filtering by Repository

To filter images by repository, you can use the --filter option with the docker images command.

## Example

```dash
    docker images --filter "reference=nginx"
```

## Filtering by Dangling Images

Dangling images are images that are not tagged and are not referenced by any container. You can filter and list dangling images using the -f or --filter option.

## Example

```bash
   docker images -f "dangling=true"
```

This command lists all dangling images on your local machine.