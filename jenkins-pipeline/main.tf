terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}
provider "docker" {}


resource "docker_container" "jenkins" {
  name  = "jenkins"
  image = "jenkins/jenkins:lts"

  ports {
    internal = 8080
    external = 8081
  }

  volumes {
host_path = "C:\\Users\\HP\\jenkins_home"
    container_path = "/var/jenkins_home"
  }

  command = [
    "/bin/bash", 
    "-c", 
    "java -jar /usr/share/jenkins/jenkins.war",
    "tail", 
     "-f",
      "/dev/null"
  ]
}

