variable "ext_port_in" {
  description = "external port of docker container"
}

variable "int_port_in" {
  description = "internal port of docker container"
}

variable "name_in" {
  description = "name of the docker container"
}

variable "image_in" {
  description = "image of the docker container"
}

variable "count_in" {}
variable "volumes_in" {
  description = "list of volumes for the docker container"
}
