#!/usr/bin/bash


#Lancement de conteneur
docker run -d --name c1
docker run -d --name c1 -p 8080:80 
docker run -ti debian:latest
docker run -ti --hostname c1 debian:latest
docker run -ti --rm --hostname c1 debian:latest

docker stop c1
docker start c1

docker rm -f c1

docker rm -f $(docker ps -aq)
