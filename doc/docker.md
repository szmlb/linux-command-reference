# Docker Command Reference

This document provides detailed explanations of common commands used for developing, running, and managing Docker containers and images.

## Core Docker Commands

### `docker run` - Create and Run a Container
The primary command to start a container from an image.

**Common Flags:**
- `-d`: Detached mode (run in the background).
- `-p <host_port>:<container_port>`: Publish a container's port(s) to the host.
- `--name <name>`: Assign a custom name to the container.
- `-v <host_path>:<container_path>`: Bind mount a volume for persistent storage.
- `-it`: Interactive mode with a pseudo-TTY (useful for accessing the shell).
- `--rm`: Automatically remove the container when it exits.

**Examples:**
```bash
# Run an Nginx server in the background, exposing port 8080
docker run -d -p 8080:80 --name my-nginx nginx

# Run an interactive Ubuntu shell, and delete the container when exiting
docker run -it --rm ubuntu bash
```

### `docker ps` - List Containers
Shows running and stopped containers.

**Common Flags:**
- `-a` (or `--all`): Show all containers (default shows just running).
- `-q`: Only display container IDs.

**Examples:**
```bash
docker ps       # List currently running containers
docker ps -a    # List all containers (running and stopped)
```

### `docker build` - Build an Image
Builds a Docker image from a Dockerfile.

**Common Flags:**
- `-t <name:tag>`: Name and optionally tag the image (e.g., `my-app:1.0`).
- `-f <path/to/Dockerfile>`: Specify a Dockerfile if it's not in the current directory.

**Example:**
```bash
# Build an image from the Dockerfile in the current directory, tagging it as 'my-app:latest'
docker build -t my-app:latest .
```

### `docker images` - List Images
Lists the Docker images currently downloaded or built on your local machine.

**Example:**
```bash
docker images
```

### `docker exec` - Execute a Command in a Running Container
Runs a new command inside an already running container. Extremely useful for debugging.

**Common Flags:**
- `-it`: Interactive mode (to open a shell).

**Example:**
```bash
# Open an interactive bash shell inside a running container named 'my-nginx'
docker exec -it my-nginx bash
```

### `docker logs` - Fetch the Logs of a Container
Displays the output printed to `stdout` and `stderr` by the container.

**Common Flags:**
- `-f`: Follow log output (real-time stream).
- `--tail <number>`: Show only the last N lines.

**Example:**
```bash
# Stream the last 100 lines of logs for the 'my-app' container
docker logs -f --tail 100 my-app
```

### `docker stop` / `docker start` / `docker restart`
Control the lifecycle of a container.

**Examples:**
```bash
docker stop my-nginx     # Gracefully stop the container
docker start my-nginx    # Start a stopped container
docker restart my-nginx  # Restart a running container
```

### `docker rm` - Remove Containers
Deletes one or more stopped containers.

**Common Flags:**
- `-f`: Force removal of a running container (uses SIGKILL).

**Examples:**
```bash
docker rm my-nginx       # Remove a stopped container
docker rm -f my-nginx    # Force remove a running container
```

### `docker rmi` - Remove Images
Deletes one or more images from the local storage. You cannot remove an image if a container is currently using it.

**Example:**
```bash
docker rmi my-app:latest
```

### `docker system prune` - Clean Up
Removes unused data to free up space. By default, it removes stopped containers, unused networks, dangling images, and build cache.

**Common Flags:**
- `-a`: Remove all unused images, not just dangling ones.
- `--volumes`: Also remove unused volumes.

**Example:**
```bash
# Clean up everything not currently in use by a running container
docker system prune -a --volumes
```

---

## Docker Compose Commands

Docker Compose is a tool for defining and running multi-container Docker applications using a `docker-compose.yml` file.

### `docker compose up` - Build, (Re)create, Start, and Attach
Starts the entire application defined in your compose file.

**Common Flags:**
- `-d`: Detached mode (run containers in the background).
- `--build`: Build images before starting containers.

**Example:**
```bash
docker compose up -d --build
```

### `docker compose down` - Stop and Remove Containers, Networks, and Volumes
Tears down the application.

**Common Flags:**
- `-v`: Remove named volumes declared in the volumes section of the Compose file.

**Example:**
```bash
# Stop and remove containers and their associated volumes
docker compose down -v
```

### `docker compose ps` / `docker compose logs`
Similar to standard Docker commands, but scoped only to the containers managed by the current `docker-compose.yml`.

**Examples:**
```bash
docker compose ps
docker compose logs -f
```
