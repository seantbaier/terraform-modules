data "aws_ecr_authorization_token" "token" {}


locals {
  image_tag      = var.image_tag
  image_name = "${var.ecr_repository_url}/${var.app_name}:${local.image_tag}"
}

provider "docker" {
  registry_auth {
    address  = var.ecr_repository_url
    username = data.aws_ecr_authorization_token.token.user_name
    password = data.aws_ecr_authorization_token.token.password
  }
}

resource "docker_registry_image" "this" {
  name = local.image_name

  build {
    context    = var.source_path
    dockerfile = var.docker_file_path
  }
}
