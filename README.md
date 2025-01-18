# Simple Notes for Assignment: Terraform, Docker, and Kubernetes

## Tasks Overview

### 1. Local Development Environment Automation
- Use Terraform to create Docker containers for Node.js, Python, and MySQL.
- Set up a custom Docker network for communication between containers.
- Run commands:
  ```bash
  terraform init
  terraform apply
  ```
- Verify containers with:
  ```bash
  docker ps
  ```

### 2. Monitoring Stack Deployment
- Deploy Prometheus and Grafana using Docker.
- Configure a Docker network for monitoring.
- Run commands:
  ```bash
  terraform init
  terraform apply
  ```
- Access:
  - Prometheus: `http://localhost:9090`
  - Grafana: `http://localhost:3000`

### 3. CI/CD Pipeline on Localhost with Jenkins
- Use Terraform to deploy Jenkins in a Docker container.
- Use a volume for persistent data.
- Run commands:
  ```bash
  terraform init
  terraform apply
  ```
- Access Jenkins at `http://localhost:8080`.
- Configure Jenkins with GitHub for CI/CD.

### 4. Local Kubernetes Cluster with Docker Desktop
- Enable Kubernetes in Docker Desktop.
- Use Terraform to deploy a sample app (e.g., Nginx) in Kubernetes.
- Run commands:
  ```bash
  terraform init
  terraform apply
  ```
- Access the app using the Kubernetes API.

### 5. Dockerized Web Application Deployment
- Use Terraform to deploy containers for Nginx and Node.js.
- Run commands:
  ```bash
  terraform init
  terraform apply
  ```
- Access services:
  - Nginx: `http://localhost:8080`
  - Node.js: `http://localhost:3000`

## Notes
- Always ensure Docker Desktop is running.
- Use `terraform validate` to check for syntax errors.
- Use `docker logs <container_name>` to debug container issues.
- Keep all Terraform scripts version-controlled in GitHub.

