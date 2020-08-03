# Dockerized Sinatra Hello World example

An example sinatra app for testing docker deployments

## Running locally

```
docker build --tag hello-sinatra-docker:1.0 .
docker run --publish 4567:4567 -d --name hsd hello-sinatra-docker:1.0
open http://localhost:4567
```

## Stop the container

```
docker stop hsd
```
