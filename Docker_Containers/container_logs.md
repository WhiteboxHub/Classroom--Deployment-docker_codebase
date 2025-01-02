# Docker Container Logs

This document provides a comprehensive guide to managing and viewing logs in Docker containers. Effective log management is crucial for debugging, monitoring, and maintaining the health of your containerized applications.

## Table of Contents
1. [Introduction to Container Logs](#introduction-to-container-logs)
2. [Viewing Logs](#viewing-logs)
   - [Viewing Logs of a Running Container](#viewing-logs-of-a-running-container)
   - [Viewing Logs of a Stopped Container](#viewing-logs-of-a-stopped-container)
3. [Following Logs in Real-Time](#following-logs-in-real-time)
4. [Viewing Logs with Timestamps](#viewing-logs-with-timestamps)
5. [Limiting the Number of Log Lines](#limiting-the-number-of-log-lines)
6. [Logging Drivers](#logging-drivers)
   - [JSON File Logging Driver](#json-file-logging-driver)
   - [Syslog Logging Driver](#syslog-logging-driver)
   - [Journald Logging Driver](#journald-logging-driver)
7. [Best Practices](#best-practices)
8. [Conclusion](#conclusion)

## 1. Introduction to Container Logs

Container logs are essential for understanding the behavior and health of your applications running inside Docker containers. Docker provides several commands and options to manage and view these logs effectively.

## 2. Viewing Logs

### Viewing Logs of a Running Container

To view the logs of a running container, use the `docker logs` command followed by the container ID or name.

#### Example:

```bash
docker logs <container_id>
```

This command displays the logs of the specified running container. Replace <container_id> with the actual container ID or name

## 3. Following Logs in Real-Time

To follow the logs in real-time, use the -f or --follow flag with the docker logs command

## Example:

```bash
   docker logs -f <container_id>
```

This command streams the logs of the specified container in real-time, similar to the tail -f command in Unix-based system

## Viewing Logs with Timestamps

To include timestamps in the log output, use the -t or --timestamps flag

##Example

```bash
   logs -t <container_id>
   ```

This command displays the logs of the specified container with timestamps, making it easier to track the sequence of events

## Limiting the Number of Log Lines
To limit the number of log lines displayed, use the -

## Example --tail 50 

docker logs --tail 50 <container_id>

``` dash 
    docker logs --tail 50 <container_id>
```
This command displays the last 50 log lines of the specified containe
