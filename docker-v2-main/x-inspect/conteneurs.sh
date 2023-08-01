#!/usr/bin/bash


#Lancement de conteneur
docker run -d --name c1
docker run -d --name c1 -p 8080:80 
docker run -ti debian:latest
docker run -ti --hostname c1 debian:latest
docker run -ti --rm --hostname c1 debian:latest

# Accès aux metadatas
docker inspect c1
docker inspect c1 --format "{{.NetworkSettings.IPAddress}} - {{.Name}}"

# Astuce
docker ps -q | awk '{system("docker inspect -f \"{{.NetworkSettings.IPAddress}} - {{.Name}}\" "$1)}'

#Bashrc

dockip(){
docker ps -q | awk '{system("docker inspect -f \"{{.NetworkSettings.IPAddress}} - {{.Name}}\" "$1)}'
}
