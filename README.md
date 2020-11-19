# learning-docker
Nginx image based on Alpine Linux.  
Put your ngingx config file in /config, web-application in /app

### Dependencies
* [Docker](https://docs.docker.com/desktop/)

### Usage
`docker build -t <image_name[:tag]> --network=host .`  
`docker run -d -p <port>:80 <image_name[:tag]>`