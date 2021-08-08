data "aws_ecr_authorization_token" "token" {}

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
  name = var.image_name

  build {
    context    = "../context"
    dockerfile = "Dockerfile"
  }
}
