#!/usr/bin/bash

#Créer un volume
docker volume create mynginx
docker volume ls

#Lancement de conteneur
docker run -d --hostname -v mynginx:/usr/share/nginx/html/ --name c1 debian:latest
docker exec -ti c1 bash


#Supprimer des volumes
docker volume rm mynginx
