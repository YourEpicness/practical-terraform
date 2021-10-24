# Docker images
resource "docker_image" "container_image" {
  # Official docker image name
  name = var.image_in
}


