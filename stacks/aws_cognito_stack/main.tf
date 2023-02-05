module "aws_cognito_ecr_repository" {
  source = "../modules/aws/aws_ecr/aws_ecr_repository"

  name = "${var.name}-ecr-repository"
  env  = var.environment
}
