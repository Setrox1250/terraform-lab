variable "web_port" {
  type        = map(number)
  description = "Puerto externo del servicio web por ambiente"
}

variable "api_port" {
  type        = map(number)
  description = "Puerto externo del servicio API por ambiente"
}

variable "db_port" {
  type        = map(number)
  description = "Puerto externo de PostgreSQL por ambiente"
}