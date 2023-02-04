locals {
  function_name = var.function_name
}

resource "aws_lambda_function" "this" {
  count = var.create ? 1 : 0

  function_name = local.function_name

  # The bucket name as created earlier with "aws s3api create-bucket"
  s3_bucket = var.s3_bucket
  s3_key    = "${var.lambda_version}/${var.s3_key}"

  # "main" is the filename within the zip file (main.js) and "handler"
  # is the name of the property under which the handler function was
  # exported in that file.
  handler = "app.main.handler"
  runtime = var.runtime
  timeout = 300

  role = aws_iam_role.this[0].arn

  tags = {
    Name        = var.function_name
    Terraform   = "true"
    Environment = var.env
  }
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

  name                = "${local.function_name}-role"
  assume_role_policy  = data.aws_iam_policy_document.assume_role_policy[0].json
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}

