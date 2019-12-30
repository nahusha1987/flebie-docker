# flebie-docker
A repository for running Flebie applications as docker containers
Docker compose is used to enable multi container docker environment.

## Prerequisites
1. Docker engine should be installed and running on your system
2. Docker compose should be installed and running on your system
2. Make sure there are no port conflicts.
   Ensure there are no services running on the following ports :
   Refer <a href="https://docs.google.com/document/d/1bhJRcROsCglq_mURhJfVNg6TS2IzVk4kKAT2y9TgGfM/edit">this link</a> 
   for details on the ports used by Flebie applications.
   

#### Note : As of now, there is no private docker registry being setup.
As such all the docker images should be present locally ( or where
this environment is going to be setup ). To do this, run 
<b><em>mvn clean install</em></b> in all the application repos.

## To Run
Execute the following commands :<br/>
### First Time
1. docker stop $(docker ps -aq)<br/>
2. docker rm $(docker ps -aq)<br/>
3. docker volume prune<br/>
4. docker network prune<br/>
5. ./startup.sh<br/>
### To restart only specific application
1. Find container ID by running docker ps
2. docker stop <container-id>
3. docker rm <container-id>
4. Find image ID by running docker images
5. docker rmi <image-id>
6. Build image by running mvn clean install
7. set EXTERNAL_IP by running export EXTERNAL_IP="$(hostname -I | awk '{print $1}')"
8. docker-compose up <service name of application>
#### P.S: Service name is the name under which the application details are defined in the docker-compose.yml