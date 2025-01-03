# Docker Container Port Mapping

## 1. Introduction to Port Mapping

Port mapping in Docker allows you to expose container ports to the host machine, making the container's services accessible from outside the container. This is crucial for running web servers, databases, and other networked applications within Docker containers.

## 2. Basic Port Mapping

To map a port from the container to the host, use the `-p` or `--publish` flag with the `docker run` command. The syntax is `-p host_port:container_port`.

### Example:

```bash
docker run -d -p 8080:80 nginx
```

This command runs an nginx container in detached mode and maps port 80 inside the container to port 8080 on the host machine. Accessing http://localhost:8080 on the host will direct traffic to the nginx server running on port 80 inside the container

## 3. Mapping Specific Ports

You can map specific ports to avoid conflicts and ensure that the correct services are accessible.

### Example:

```bash
   docker  run -d -p 3306:3306 --name my_mysql mysql
   ```

This command runs a mysql container in detached mode and maps port 3306 inside the container to port 3306 on the host machine. This is useful for accessing the MySQL database from the host machine using the default MySQL port

### 4. Mapping All Ports

In some cases, you might want to map all ports exposed by the container to random ports on the host. This can be done using the -P flag.

### Example

```bash 
   docker run -d -P --name my_container my_image
```

This command runs a container from my_image in detached mode and maps all exposed ports to random ports on the host. You can use docker port my_container to see the mapping

### 5.  Port Mapping with Docker Compose

Docker Compose simplifies the management of multi-container applications. Port mapping can be defined in the docker-compose.yml file

### Example

``bash
  version: '3'
services:
  web:
    image: nginx
    ports:
      - "8080:80"
  db:
    image: mysql
    ports:
      - "3306:3306"

This docker-compose.yml file defines two services: web and db. The web service maps port 80 in the nginx container to port 8080 on the host. The db service maps port 3306 in the mysql container to port 3306 on the host

