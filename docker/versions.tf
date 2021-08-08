
terraform {
  required_version = ">= 1.0.4"

  required_providers {
    aws = ">= 3.35"
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.14.0"
    }
  }
}
