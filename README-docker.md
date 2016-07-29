# Create API Server Container
This is the docker project for building GO API Server

## New to Docker?

https://docs.docker.com/engine/reference/builder/
https://docs.docker.com/compose/gettingstarted/

### Common Docker Commands

```bash
  $  docker -help
  %  docker run -h
  %  docker images
  %  docker ps
  %  docker ps -all
  %  docker search httpd  
  %  docker build -t apigo .
  %  docker run --name soheil-apigo -it -p 8080:8080  apigo
  %  docker attach soheil-apigo
  %  docker ls
  %  docker rm soheil-api
  %  docker rmi apigo
```

### To SSH to a container
```bash
  %  docker exec -i -t 32c39fa2a52a /bin/bash
```

#### Advanced Commands
```bash
  $  docker rm `docker ps -a |grep -v IMAGE| awk '{print $1}'`
  $  docker rmi `docker images|grep -v IMAGE|awk '{print $3}'`
```
## Development

### To Build Image
```bash
$ docker build -t apigo .
```

### To Push Image
```bash
docker tag apigo:latest seizadi/apigo:latest
docker push seizadi/apigo:latest
```

### To Run Image
```bash
$ docker run --name soheil-apigo -e  -p 8080:8080 -it apigo
```
Now find the IP of the docker machine and point brower to it in my case:
$ docker-machine inspect
{
....
        "IPAddress": "192.168.99.100",
....
}
```
It is http://192.168.99.100:8080

## Create Web Cluster
This is the docker project for building Web Cluster using Docker Compose

It will have 2 containers:
- API Server
- Database Server

### To build Docker Compose
```bash
  % docker-compose build
```

### To bring-up Docker Compose Cluster
```bash
  % docker-compose up
```

### ubuntu Docker Image
  https://github.com/dockerfile/ubuntu
  https://github.com/dockerfile/ubuntu/blob/master/Dockerfile

### ruby Docker Image
  https://hub.docker.com/_/ruby/
  https://github.com/docker-library/ruby
  https://github.com/docker-library/ruby/blob/master/2.2/Dockerfile

### postgres
  https://github.com/docker-library/postgres
  https://github.com/docker-library/postgres/blob/master/9.5/Dockerfile

## Debug Notes

### Problem w/ DNS Lookup

Problem w/ suspend resume from home to work, docker machine has the DNS Server Cached from docker machine and this can cause issues.

Stop and Start the docker machine to pickup the new DNS Server from new network.

```bash
$ docker-machine stop
Stopping "default"...
Machine "default" was stopped.
```

```bash
$ docker-machine start
Starting "default"...
(default) Check network to re-create if needed...
(default) Waiting for an IP...
Machine "default" was started.
Waiting for SSH to be available...
Detecting the provisioner...
Started machines may have new IP addresses. You may need to re-run the `docker-machine env` command.
```
```bash
$ eval `docker-machine env`
```

You can look at the new environment if you like:
```bash
$ docker-machine inspect
{
    "ConfigVersion": 3,
    "Driver": {
        "IPAddress": "192.168.99.100",
        "MachineName": "default",
        "SSHUser": "docker",
....
}
```
