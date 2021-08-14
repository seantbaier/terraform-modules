variable "domain_name" {
  description = "(Required) The domain name. Must be between 1 and 512 characters in length."
  type        = string
}

variable "aws_acm_certificate_arn" {
  description = "(Required) The ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the aws_acm_certificate resource to configure an ACM certificate."
  type        = string
}

variable "api_id" {
  description = "API Gateway Id for aws_apigatewayv2_api_mapping"
  type = string
}

variable "aws_apigatewayv2_stage_id" {
  description = "API Gateway Stage Id for the aws_apigatewayv2_api_mapping"
  type = string
}