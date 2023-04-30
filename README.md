# Update package index
sudo apt-get update

# Install Docker
sudo apt install docker.io -y

# Install Docker Compose
sudo apt install docker-compose -y

# Add current user to the Docker group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Build and start the containers using docker-compose
docker-compose up --build -d

# If we want to build and run the container without docker-compose:
# Build the Docker image with a tag
docker build -t gopalgtm001/demo-django:latest .

# Push the Docker image to a registry (e.g., Docker Hub)
docker push gopalgtm001/demo-django:latest

# Run the Docker container and map port 8080 on the host to port 8000 in the container
docker run -d -p 8080:8000 gopalgtm001/demo-django
