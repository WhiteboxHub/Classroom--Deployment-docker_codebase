# Docker Container Resource Management

## 1. Introduction

Resource management in Docker containers involves allocating and limiting the CPU, memory, disk I/O, and network resources available to each container. Proper resource management ensures that containers do not consume more resources than necessary, preventing resource contention and ensuring optimal performance.

## 2. CPU Resource Management

### Setting CPU Shares

CPU shares determine the relative weight of a container's CPU time compared to other containers. The default value is 1024.

**Example**:

```bash
docker run --cpu-shares 512 <image_name>
```
This command runs a container with a CPU share of 512, giving it half the CPU time of a container with the default share of 1024

### Limiting CPU Usage

### You can limit the CPU usage of a container by specifying the number of CPU cores it can use

```bash
   docker run --cpus="1.5" <image_name>
```

This command runs a container with access to 1.5 CPU cores

### 3. Memory Resource Managneable

### Setting Memory Limits

You can set a hard limit on the amount of memory a container can use

## Example

```bash 
   git run -m 512m <imGW_Name>  
```

This command runs a container with a memory limit of 512 MB.

### Setting Memory Reservations

### Example

```bash
   docker run --memory-reservation 256m <image_name>
```
This command runs a container with a memory reservation of 256 MB

### 4.  Disk I/O Resource Management

## Setting Disk I/O Limits

you can limit the disk I/O operations of a container by setting read and write rates.

### Example 

```bash
    docker run --device-read-bps /dev/sda:1mb --device-write-bps /dev/sda:1mb <image_name>
```























