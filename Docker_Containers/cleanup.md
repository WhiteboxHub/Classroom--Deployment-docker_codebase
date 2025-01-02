# Docker Cleanup: Removing Stopped Containers and Unused Resources

This document provides a comprehensive guide to cleaning up Docker environments by removing stopped containers and unused resources such as networks and images. Regular cleanup is essential for maintaining system performance and freeing up disk space.

## Table of Contents
1. [Introduction](#introduction)
2. [Removing All Stopped Containers](#removing-all-stopped-containers)
3. [Removing All Unused Resources](#removing-all-unused-resources)
   - [Removing Unused Containers](#removing-unused-containers)
   - [Removing Unused Networks](#removing-unused-networks)
   - [Removing Unused Images](#removing-unused-images)
   - [Removing Unused Volumes](#removing-unused-volumes)
4. [Best Practices](#best-practices)
5. [Conclusion](#conclusion)

## 1. Introduction

Over time, Docker environments can accumulate stopped containers, unused networks, images, and volumes, which can consume significant disk space. Regularly cleaning up these unused resources helps maintain system performance and ensures efficient use of storage.

## 2. Removing All Stopped Containers

To remove all stopped containers, you can use the `docker container prune` command. This command removes all stopped containers.

**Example**:

```bash
docker container prune
```

This command prompts you to confirm the removal of all stopped containers. You can add the -f or --force flag to bypass the confirmation prompt

```bash
   docker container prune -f
```

### 3. Removing All Unused Resources

## Removing Unused Containers

To remove all unused containers, including stopped containers, use the docker container prune command.

## Example

```bash
   docker container prune
```

This command removes all stopped containers. Add the -f flag to force the removal without a confirmation prompt.

## Removing Unused Networks

To remove all unused networks, use the docker network prune command

## Example

```bash
   docker network prune
```

This command removes all unused networks. Add the -f flag to force the removal without a confirmation prompt.

## Removing Unused Images

To remove all unused images, use the docker image prune command

## Example

```bash
   docker image prune
```

 This command removes all dangling images (images not tagged and not referenced by any container). Add the -f flag to force the removal without a confirmation prompt.


 To remove all unused images (not just dangling ones), use the -a or --all flag.


 ```bash
    docker image prune -a
```

## Removing Unused Volumes

To remove all unused volumes, use the docker volume prune command

## Example

```bash
   docker volume prune
```



