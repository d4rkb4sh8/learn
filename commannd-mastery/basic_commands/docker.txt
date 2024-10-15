 Docker is a platform that provides containerization for applications. It allows you to automate deployment, scaling, and operations of applications using containers. Below are some common `docker` commands along with their explanations and examples that can be used in Kali Linux terminal.

### Basic Commands

1. **`docker --version`**
   - Shows the Docker version installed on your system.
   ```sh
   docker --version
   ```

2. **`docker info`**
   - Provides detailed information about the Docker environment, including system dependencies and configuration details.
   ```sh
   docker info
   ```

3. **`docker search <image_name>`**
   - Searches for Docker images on Docker Hub that match the specified name.
   ```sh
   docker search ubuntu
   ```

4. **`docker pull <image_name>`**
   - Downloads a Docker image from Docker Hub to your local machine.
   ```sh
   docker pull ubuntu:latest
   ```

5. **`docker images`**
   - Lists all locally stored Docker images.
   ```sh
   docker images
   ```

6. **`docker run <image_name>`**
   - Runs a container from the specified image.
   ```sh
   docker run -it ubuntu:latest /bin/bash
   ```

### Managing Containers

1. **`docker ps`**
   - Lists running containers.
   ```sh
   docker ps
   ```

2. **`docker ps -a`**
   - Lists all containers, both running and stopped.
   ```sh
   docker ps -a
   ```

3. **`docker start <container_id>`**
   - Starts a stopped container.
   ```sh
   docker start <container_id>
   ```

4. **`docker stop <container_id>`**
   - Stops a running container.
   ```sh
   docker stop <container_id>
   ```

5. **`docker restart <container_id>`**
   - Restarts a container.
   ```sh
   docker restart <container_id>
   ```

6. **`docker rm <container_id>`**
   - Removes a stopped container.
   ```sh
   docker rm <container_id>
   ```

7. **`docker rmi <image_name>`**
   - Removes an image from your local machine.
   ```sh
   docker rmi ubuntu:latest
   ```

### Networking and Port Mapping

1. **`docker run -p <host_port>:<container_port> <image_name>`**
   - Maps a port from the container to the host.
   ```sh
   docker run -p 8080:80 nginx
   ```

2. **`docker run -d -p <host_port>:<container_port> --name <container_name> <image_name>`**
   - Runs a container in detached mode and maps the port.
   ```sh
   docker run -d -p 8081:80 --name mynginx nginx
   ```

### Inspecting Containers and Images

1. **`docker inspect <container_id>`**
   - Provides detailed information about a container, including its configuration.
   ```sh
   docker inspect <container_id>
   ```

2. **`docker inspect <image_name>`**
   - Provides detailed information about an image.
   ```sh
   docker inspect ubuntu:latest
   ```

### Using Docker Compose

1. **Create a `docker-compose.yml` file:**
   ```yaml
   version: '3'
   services:
     web:
       image: nginx
       ports:
         - "8082:80"
   ```

2. **Run Docker Compose:**
   ```sh
   docker-compose up -d
   ```

### Example Workflow

1. **Pull an Ubuntu image:**
   ```sh
   docker pull ubuntu:latest
   ```

2. **Run a container from the Ubuntu image and get a shell:**
   ```sh
   docker run -it ubuntu:latest /bin/bash
   ```

3. **List running containers:**
   ```sh
   docker ps
   ```

4. **Stop a running container:**
   ```sh
   docker stop <container_id>
   ```

5. **Remove an image:**
   ```sh
   docker rmi ubuntu:latest
   ```

These commands should help you get started with Docker in Kali Linux. For more advanced usage and options, refer to the [Docker documentation](https://docs.docker.com/).

