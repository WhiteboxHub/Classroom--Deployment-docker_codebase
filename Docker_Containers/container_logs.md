# Docker Container Logs


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
