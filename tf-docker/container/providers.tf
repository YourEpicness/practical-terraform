# Providers for containers
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      # ~> ensures that the right most number can increment
      version = "~> 2.15.0"
      # terraform init -upgrade to confirm
    }
  }
}
