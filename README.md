# RunDockerAppliaction

In this Repo i will create a basic python application and run it in docker container.
After startup you can be reached it locally : https://localhost:8081

## Preperation  
1. Clone the repository 
2. Install [Docker Desktop](#https://www.docker.com/products/docker-desktop/)
3. Create Docker file (see example)
4. Create Docker-compose yaml file (see example)
5. Create Make (see example)

## Run docker container
6. Start the docker (using make commands ): </br>
 Create the img <code>make build</code> </br>
 Start the container <code>make up</code> </br>
 Stop and remove containiers <code>make down</code>
7. Now the application can be reached via localhost: https://localhost:8081 (confgired in Docker-compose.yaml) 
