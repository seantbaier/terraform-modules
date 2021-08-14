variable "environment" {
  description = "Environment the resource is provisioned in."
  type        = string
}

variable "name" {
  description = "Name for the AWS resource."
  type        = string
}

variable "integration_uri" {
  description = "(Optional) The URI of the Lambda function for a Lambda proxy integration, when integration_type is AWS_PROXY. For an HTTP integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service."
  type        = string
}


variable "domain_name" {
  description = "(Required) The domain name. Must be between 1 and 512 characters in length."
  type        = string
}

variable "certificate_arn" {
  description = "(Required) The ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. AWS Certificate Manager is the only supported source. Use the aws_acm_certificate resource to configure an ACM certificate."
  type        = string
}

