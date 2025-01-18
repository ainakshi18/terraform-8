terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}
provider "docker" {}

resource "docker_container" "nginx" {
  name  = "nginx_web"
  image = "nginx:latest"
  ports {
    internal = 80
    external = 8082
  }
}

resource "docker_container" "nodejs" {
  name  = "nodejs_app"
  image = "node:latest"
  ports {
    internal = 3000
    external = 3002
  }
}
