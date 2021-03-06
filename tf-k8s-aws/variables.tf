### --- root/variables.tf ---
variable "aws_region" {
  default = "us-east-2"
}

variable "access_ip" {
  type = string
}


# --- database variables ---
# have to create variables for those in .tfvars

variable "dbname" {
  type = string
}

variable "dbuser" {
  type      = string
  sensitive = true
}
variable "dbpassword" {
  type      = string
  sensitive = true
}
