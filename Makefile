# Define the name of the service in Docker Compose
SERVICE_NAME = web

# Build the Docker image using the Dockerfile
build:
# This command runs `docker-compose build`, which creates the Docker image
# by using the Dockerfile in the current directory. If the image is already built,
# it will only rebuild if there are changes to the Dockerfile or build context.
	docker-compose build

build_and_up:

	docker-compose up -d --build

# Start the services in the background
up:
# This command runs `docker-compose up -d`, which starts the container(s) defined
# in the docker-compose.yml file in detached mode (background). The ports will be exposed,
# and the container will run as defined.
	docker-compose up -d

# Stop and remove the services
down:
# This stops and removes all running containers and associated resources
# like networks created by `docker-compose up`.
	docker-compose down

# Restart the services
restart:
# This command restarts the containers. It can be useful for refreshing
# services without stopping and removing them completely.
	docker-compose restart

# View real-time logs of the running containers
logs:
# This command follows (`-f`) the logs of all services, allowing you to monitor
# output in real time.
# docker-compose log -f <CONTAINER ID>  	
	docker-compose logs -f


# List all running containers
ps:
# This shows the status of all containers managed by this Docker Compose project,
# including whether they are running or stopped.
# Examle:
# CONTAINER ID   IMAGE                         COMMAND                  CREATED         STATUS          PORTS                    NAMES
# 56c27acb4d4a   runappliactionviadocker-web   "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes    0.0.0.0:8081->80/tcp     frontend-app
# 98a6a1274452   grafana/grafana:8.3.0         "/run.sh"                7 weeks ago     Up 28 minutes   0.0.0.0:3000->3000/tcp   local_env-grafana-1

	docker-compose ps

# Clean up all containers, images, volumes, and networks
clean:
# This stops all services, removes images (`--rmi all`), deletes volumes,
# and removes orphaned containers or networks. Use this to reset your environment.
	docker-compose down --rmi all --volumes --remove-orphans

volume_prune:

	docker volume prune -f

# Database

connect_db:
# Connect to the database using the `psql` command.
	docker exec -it mysql-db mysql -uuser -ppassword mydatabase

remove_db:

	docker volume rm myproject_db_data

