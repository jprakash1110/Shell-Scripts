#!/bin/bash

#Create 15 containers with random name

for i in $(seq 1 15); do
   docker run -itd ubuntu sleep infinity
done

#create  10 containers with name docker

for i in $(seq 1 10); do
    docker run -itd --name docker-$i ubuntu sleep infinity
done

# Now print name on id of the the container created above

echo "List the container created 15 with random name and 10 with docker series name"
docker ps -a --format "{{.ID}} {{.Names}}"