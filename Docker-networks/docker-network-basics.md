# Basic Docker Network Commands

## Introduction

Docker networking allows containers to communicate with each other and with other non-Docker environments. This guide will cover the basic commands used to work with Docker networks.

## Common Docker Network Commands

### 1. `docker network ls`

This command lists all the networks created in Docker.

```bash
docker network ls
```

### 2. `docker network inspect`

This command displays detailed information about a specific network.

```bash
docker network inspect <network_name>
``` 

### 3. `docker network create`

This command creates a new network.

```bash
docker network create <network_name>
```

### 4. `docker network connect`

This command connects a container to a network.

```bash
docker network connect <network_name> <container_name>
```

### 5. `docker network disconnect`

This command disconnects a container from a network.

```bash
docker network disconnect <network_name> <container_name>
```

### 6. `docker network rm`

This command removes a network.

```bash
docker network rm <network_name>
```

## Conclusion

By understanding these basic Docker network commands, you can effectively manage and troubleshoot Docker networks.
