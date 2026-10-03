resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "node" {
  name = "node:20-alpine"
}

resource "docker_image" "postgres" {
  name = "postgres:16-alpine"
}

resource "docker_container" "database" {
  name  = "bd-${terraform.workspace}"
  image = docker_image.postgres.image_id

  env = [
    "POSTGRES_PASSWORD=postgres"
  ]

  ports {
    internal = 5432
    external = var.db_port[terraform.workspace]
  }
}

resource "docker_container" "api" {
  name  = "api-${terraform.workspace}"
  image = docker_image.node.image_id

  command = [
    "node",
    "-e",
    "require('http').createServer((req,res)=>res.end('API funcionando')).listen(3000)"
  ]

  ports {
    internal = 3000
    external = var.api_port[terraform.workspace]
  }
}