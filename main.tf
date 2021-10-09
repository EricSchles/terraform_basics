terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

# https://medium.com/swlh/setup-and-run-web-app-on-terraform-using-docker-c8e045da8860

resource "docker_container" "flask" {
  image = "hello_world:develop"
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}