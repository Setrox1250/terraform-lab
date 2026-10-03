resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "node" {
  name = "node:20-alpine"
}

resource "docker_image" "postgres" {
  name = "postgres:16-alpine"
}