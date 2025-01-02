# Docker Network Management

This document provides a comprehensive guide to managing Docker networks, including listing existing networks, creating new networks, and connecting containers to networks. Effective network management is crucial for ensuring secure and efficient communication between containers.

## Table of Contents
1. [Introduction to Docker Networks](#introduction-to-docker-networks)
2. [Listing Networks](#listing-networks)
3. [Creating a Network](#creating-a-network)
4. [Connecting a Container to a Network](#connecting-a-container-to-a-network)
5. [Disconnecting a Container from a Network](#disconnecting-a-container-from-a-network)
6. [Best Practices](#best-practices)
7. [Conclusion](#conclusion)

## 1. Introduction to Docker Networks

Docker networks enable containers to communicate with each other and with external networks. Docker provides several types of networks, including bridge, host, overlay, and macvlan networks. Understanding and managing these networks is essential for building robust and secure containerized applications.

## 2. Listing Networks

To list all existing Docker networks, use the `docker network ls` command.

**Example**:

```bash
docker network ls
```

 This command displays a list of all Docker networks, including their network IDs, names, drivers, and scopes

 ## 3. Creating a Network

 To create a new Docker network, use the docker network create command followed by the network name and any additional options.

## Example

  ```bash
     docker network create my_bridge_network
```

 This command creates a new bridge network named my_bridge_network

 ## 4. Creating an Overlay Network

 Overlay networks are used for multi-host networking, enabling containers on different Docker hosts to communicate with each other

## Example

 ```bash 
  docker network create --driver overlay my_overlay_network
```

This command creates a new overlay network named my_overlay_network

## 4.Connecting a Container to a Network

To connect a container to a specific network, use the --network flag with the docker run command

## Example

```bash
   docker run -d --name my_container --network my_bridge_network nginx
```

This command runs an nginx container in detached mode, names it my_container, and connects it to the my_bridge_network


### Connecting an Existing Container to a Network

To connect an existing container to a network, use the docker network connect command

## Example

```bash
docker network connect my_bridge_network my_container
```

This command connects the existing container named my_container to the my_bridge_network

### 5. Disconnecting a Container from a Network

To disconnect a container from a network, use the docker network disconnect command

## Example

```bash
   docker network disconnect my_bridge_network my_container
```

This command disconnects the container named my_container from the my_bridge_network

