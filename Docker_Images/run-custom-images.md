## Command to run docker images
## Run the docker image

## Run the docker image with the following command
```bash 
docker run -d \
    --name my-microservice \
    -p 8080:8080 \
    -v /path/to/your/application.jar:/app/application.jar \
    my-microservice:latest
```
