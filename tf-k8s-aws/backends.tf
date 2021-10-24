### --- root/backends.tf ---
terraform {
  backend "remote" {
    organization = "udemy-terraform"

    workspaces {
      name = "mtc-dev"
    }
  }
}
