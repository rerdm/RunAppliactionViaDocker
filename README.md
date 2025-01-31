# RunDockerAppliaction

In this Repo i will create a basic python application and run it in docker container.
After startup you can be reached it locally : https://localhost:8081

## Preperation  
1. Clone the repository 
2. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
3. Create Docker file (see example)
4. Create Docker-compose yaml file (see example)
5. Create Make (see example)

## Run docker container
1. Start the docker (using make commands ): </br>
2. Create the img <code>make build</code> </br>
3. Start the container <code>make up</code> </br>
3. Stop and remove containiers <code>make down</code>


## Open the application the container running docker
- Now the application can be reached via localhost: https://localhost:8081 (confgired in Docker-compose.yaml) 

## Stop docker container

- Stop and remove containiers <code>make down</code></br>

## Database
- Check if database is connected <code>docker exec -it mysql-db mysql -uuser -ppassword mydatabase</code></br>
- Show tables :<code>SHOW TABLES;</code>
- Create Table via mysql(manual): </br><code>CREATE TABLE input_data (id INT AUTO_INCREMENT PRIMARY KEY, input_text VARCHAR(255) NOT NULL, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);</code>
- Select input form db : <code>SELECT * FROM input_data;</code>
- Leave mysql :<code>exit</code>

NOTE: All make commands are configurred in the <code>Makefile</code>