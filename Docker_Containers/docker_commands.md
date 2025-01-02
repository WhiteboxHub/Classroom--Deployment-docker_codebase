# Docker Commands: Managing Containers

This document provides a step-by-step guide to running and managing Docker containers. You'll learn how to run a simple container, list containers, start and stop containers, remove containers, and understand different modes of operation.

## Table of Contents
1. [Running a Simple Container](#running-a-simple-container)
2. [Listing Containers](#listing-containers)
3. [Starting and Stopping Containers](#starting-and-stopping-containers)
4. [Removing Containers](#removing-containers)
5. [Running Containers in Different Modes](#running-containers-in-different-modes)
   - [Detached Mode](#detached-mode)
   - [Interactive Mode](#interactive-mode)

## 1. Running a Simple Container
To get started with Docker, we can run a simple container using the `hello-world` image.

### Steps:
I. **Check for the hello-world image locally**:

   ```bash
   docker images
```
II. **Pull the image from Docker Hub if not found**:
  
   ```bash
   docker pull hello-world
```
This command downloads the hello-world image from Docker Hub. Docker Hub is a cloud-based repository for sharing Docker images

III. **Create and run a container from the image**:

 ```bash
  docker run hello-world
```

This command creates a new container from the hello-world image and immediately runs it. The container will print a message confirming that Docker is working correctly and will exit after displaying the message


## 2. Listing a Container

```bash
  docker ps
```
This command displays a list of all currently running containers, including their container IDs, names, and other useful information


## List All Containers (Including Stopped Ones):

```bash
   docker ps -a
```

 This command lists all containers on your system, regardless of their state (running or stopped)


## 3.Starting and Stopping Containers
Managing the lifecycle of your containers involves starting and stopping them as needed

## Stop a Running Container
To stop a running container, use the following command, replacing <container_id> with the actual container ID or name:
```bash
   docker stop <container_id>
```
This command sends a signal to the specified running container, requesting it to stop gracefully. If the container does not stop within a timeout period, it is forcibly killed

## Start a Stopped Container
To start a previously stopped container:
```bash
   docker  start <container_id>
```
This command starts a container that has been stopped. The container will resume its previous state

## Restart a Container
To restart a container (stop and then start it again):
```bash
   docker restart <container_id>
```
 This command stops and then starts the specified container in one action, which can be useful for applying configuration changes

##4. **Removing Containers**:
When you no longer need a container, you can remove it to free up system resources

## Remove a Stopped Container
To remove a stopped container:
```bash
   docker rm <container_id>
```
This command deletes the specified stopped container from your system. You cannot remove a running container without stopping it first

##Force Remove a Running Container
To forcefully remove a running container (this will stop the container first)
```bash
   docker rm -f <container_id>
   ```

This command forcibly stops and removes the specified container. Use with caution, as this will terminate any running processes in the container

## 5.Running Containers in Different Modes

## Detached Mode
Running a container in the background allows you to continue using the terminal.

To run a container in detached mode, use the -d flag:


```bash
   docker run -d wblll-frontend
   ```

This command runs the nginx container in the background. You can continue to use your terminal for other commands while the container is running

## Interactive Mode
To run a container and interact with it, use the -it flag. This is especially useful for containers that require user input or command execution.

To run a container in interactive mode:

```bash
   docker run -it wblll-frontend
   ```

 This command starts an Ubuntu container and opens a Bash shell for you to interact with. You can execute commands inside the container as if you were logged into a regular system.

## Conclusion

You have now learned the fundamental Docker commands to manage containers effectively. With these commands, you can run, stop, start, and remove containers as needed, allowing you to leverage the full power of Docker in your development workflow


```bash 
    
You can save this content in a file named `docker_commands.md`. This file provides a comprehensive guide to managing Docker containers, including detailed explanations for each command.

```
