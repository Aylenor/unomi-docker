# Unomi Docker Image
![Docker Pulls](https://img.shields.io/docker/pulls/ohajji/unomi)
[![](https://images.microbadger.com/badges/version/ohajji/unomi.svg)](https://microbadger.com/images/ohajji/unomi "Get your own version badge on microbadger.com")

This is a fork of Mike Ghen's repository. 
Link to Mike Ghen's repository : https://github.com/mikeghen/unomi-docker

Here an update was done in order to work with Apache Unomi 1.4.0

# Running Unomi
Unomi requires ElasticSearch so it is recommended to run Unomi and ElasticSearch using docker-compose:
```
docker-compose up
```

# Environment variables

When you start the `unomi` image, you can adjust the configuration of the Unomi instance by passing one or more environment variables on the `docker run` command line.

- **`ELASTICSEARCH_HOST`** - The IP address of hostname for ElasticSearch
- **`ELASTICSEARCH_PORT`** - The port for ElasticSearch

# Pulling image from docker hub

An image was pushed on docker hub in order to make deployments on Red Hat OpenShift or Kubernetes.

Simply use the tag : 
`ohajji/unomi:1.4.0`

Link to the docker image : https://hub.docker.com/r/ohajji/unomi
