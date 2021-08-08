data "aws_ecr_authorization_token" "token" {}

locals {
  image_tag = "latest"
}

resource "aws_ecr_repository" "this" {
  name                 = var.name
  image_tag_mutability = "MUTABLE"

  tags = {
    Name        = var.name
    Terraform   = "true"
    Environment = var.environment
  }
}


provider "docker" {
  registry_auth {
    address  = aws_ecr_repository.this.repository_url
    username = data.aws_ecr_authorization_token.token.user_name
    password = data.aws_ecr_authorization_token.token.password
  }
}

resource "docker_registry_image" "this" {
  name = "${aws_ecr_repository.this.repository_url}/${var.name}:${local.image_tag}"

  build {
    context    = "../context"
    dockerfile = "Dockerfile"
  }
}
