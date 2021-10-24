# Deciding whether to deploy to dev, staging, or prod
# variable "env" {
#   description = "Environment to deploy to"
#   type        = string
#   default     = "dev"
# }

variable "image" {
  type        = map(any)
  description = "image for container"
  default = {
    nodered = {
      dev  = "nodered/node-red:latest"
      prod = "nodered/node-red:latest-minimal"
    }
    influxdb = {
      dev  = "influxdb:2.0.9"
      prod = "influxdb:2.0.9"
    }
    grafana = {
      dev  = "grafana/grafana:latest"
      prod = "grafana/grafana:main"
    }
  }
}

variable "ext_port" {
  type = map(any)
  #   default = 1880
  #   sensitive = true

  # Validation for dev environment
  #   validation {
  #     condition     = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 1980
  #     error_message = "The external port must be in the valid port range 0 - 65535."
  #   }

  #   # Validation for prod environment
  #   validation {
  #     condition     = max(var.ext_port["prod"]...) <= 1980 && min(var.ext_port["prod"]...) >= 1880
  #     error_message = "The external port must be in the valid port range 0 - 65535."
  #   }
}

variable "int_port" {
  type    = number
  default = 1880

  # Custom Error Handling
  # Restrictions on the values for the variable. 
  #   validation {
  #     condition     = var.int_port == 1880
  #     error_message = "The internal port must be 1880."
  #   }
}

variable "container_count" {
  type    = number
  default = 3
}


################
# TF VARS
################

# .tfvars files are considered secret and shouldnt be commmited, so add to .gitignore

# to run terraform with tfvars loaded use `terraform plan --var-file name.tfvars`

# anything specified at command line overrides the .tfvars ex: `terraform apply -var ext_port=1990` takes priorisity

# order in the command matters as well, so if you run both, the first one is used
