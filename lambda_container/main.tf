
data "aws_region" "current" {}

data "aws_caller_identity" "this" {}

data "aws_ecr_authorization_token" "token" {}


locals {


  base_tags = {
    Name        = var.function_name
    Terraform   = "true"
    Environment = var.environment
  }
}



resource "aws_lambda_function" "this" {
  count = var.create ? 1 : 0

  function_name = var.function_name
  timeout       = 300
  role          = aws_iam_role.this[0].arn
  image_uri     = var.function_name
  package_type  = "Image"

  tags = local.base_tags
}

data "aws_iam_policy_document" "assume_role_policy" {
  count = var.create ? 1 : 0
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "this" {
  count = var.create ? 1 : 0

  name                = "${var.function_name}-role"
  assume_role_policy  = data.aws_iam_policy_document.assume_role_policy[0].json
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}
