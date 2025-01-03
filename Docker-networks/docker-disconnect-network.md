# Disconnecting Containers from Networks

## Introduction

Disconnecting containers from Docker networks is an essential task when managing Docker environments. This guide will cover the commands used to disconnect containers from networks.

## Commands to Disconnect Containers from Networks

### 1. `docker network disconnect`

This command disconnects a container from a network.

```bash
docker network disconnect <network_name> <container_name>
```

### 2. `docker network disconnect --force`

This command disconnects a container from a network without prompting for confirmation.

```bash
docker network disconnect --force <network_name> <container_name>
```

## Conclusion

By understanding these commands, you can effectively disconnect containers from Docker networks.
