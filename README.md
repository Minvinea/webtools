# WebTools
Website to store links to tools

## Docker

### BUILD
docker build -t webserver-tools webserver-tools/

### RUN
docker run --name web-tools -d -p 8080:80 webserver-tools:latest
