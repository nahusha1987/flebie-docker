# flebie-docker
A repository for running Flebie applications as docker containers

## Prerequisites
1. Docker engine should be installed and running on your system
2. Make sure there are no port conflicts.
   Ensure there are no services running on the following ports :
   3306, 8080, 5672, 15672, 8761, 8980, 9280, 9080

#### Note : As of now, there is no private docker registry being setup.
As such all the docker images should be present locally ( or where
this environment is going to be setup ). To do this, run 
<b><em>mvn clean install</em></b> in all the application repos.

## To Run
Execute the following commands :<br/>
docker stop $(docker ps -aq)<br/>
docker rm $(docker ps -aq)<br/>
docker volume prune<br/>
docker network prune<br/>
docker-compose up<br/>
