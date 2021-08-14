variable "domain_name" {
  description = "Domain name for the certifcate."
  type        = string
}

variable "target_domain_name" {
  description = "The target domain name. (Computed from aws_apigatewayv2_api)"
  value       = string
}

variable "domain_name_hosted_zone_id" {
  description = "The Amazon Route 53 Hosted Zone ID of the endpoint. (Computed from aws_apigatewayv2_api) "
  value       = string
}

variable "route53_hosted_zone_id" {
  description = "Route53 hosted zone_id"
  type        = string
}
