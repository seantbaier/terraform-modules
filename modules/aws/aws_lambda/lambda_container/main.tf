resource "aws_lambda_function" "this" {
  function_name = var.function_name
  timeout       = 300
  role          = aws_iam_role.this.arn
  image_uri     = var.image_uri

  package_type = "Image"

  tags = {
    Name        = var.function_name
    Terraform   = "true"
    Environment = var.environment
  }
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "this" {
  name                = "${var.function_name}-role"
  assume_role_policy  = data.aws_iam_policy_document.assume_role_policy.json
  managed_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}
