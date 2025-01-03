# Docker Swarm Commands

## Introduction

Docker Swarm is a container orchestration tool that allows you to manage a cluster of Docker nodes as a single virtual system. This guide will cover the basic commands used to work with Docker Swarm.

## Common Docker Swarm Commands

### 1. `docker swarm init`

This command initializes a new Swarm.

```bash
docker swarm init
```

### 2. `docker swarm join`

This command joins a node to an existing Swarm.

```bash
docker swarm join --token <token> <manager_ip>:<manager_port>
```

### 3. `docker swarm leave`

This command leaves a node from a Swarm.

```bash
docker swarm leave
```

### 4. `docker swarm join-token`

This command displays the join token for a Swarm.

```bash
docker swarm join-token <role>
```

## Conclusion

By understanding these basic Docker Swarm commands, you can effectively manage and troubleshoot Docker Swarm.
