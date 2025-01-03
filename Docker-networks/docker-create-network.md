# Creating Docker Networks

## Introduction

Creating Docker networks allows containers to communicate with each other and with other non-Docker environments. This guide will cover the commands used to create Docker networks.

## Commands to Create Docker Networks

### 1. `docker network create`

This command creates a new network.

```bash
docker network create <network_name>
```

### 2. `docker network create --driver <driver_name>`

This command creates a new network with a specific driver.

```bash
docker network create --driver <driver_name> <network_name>
```

### 3. `docker network create --subnet <subnet_cidr> <network_name>`

This command creates a new network with a specific subnet.

```bash
docker network create --subnet <subnet_cidr> <network_name>
```

### 4. `docker network create --subnet <subnet_cidr> --gateway <gateway_ip> <network_name>`

This command creates a new network with a specific subnet and gateway.

```bash
docker network create --subnet <subnet_cidr> --gateway <gateway_ip> <network_name>
```

## Conclusion

By understanding these commands, you can create and manage Docker networks more effectively.

