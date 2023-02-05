locals {
  post_confirmation_trigger_lambda_name = "${var.name}-post-confirmation-trigger"
}


module "aws_cognito_post_confirmation_trigger_repository" {
  source = "../../modules/aws/aws_ecr/aws_ecr_repository"

  name        = local.post_confirmation_trigger_lambda_name
  environment = var.environment
}


module "aws_cognito_post_confirmation_trigger_image" {
  source = "../../modules/docker/docker_registry_image"

  name               = local.post_confirmation_trigger_lambda_name
  environment        = var.environment
  repository_address = module.aws_cognito_post_confirmation_trigger_repository.repository_url
}
