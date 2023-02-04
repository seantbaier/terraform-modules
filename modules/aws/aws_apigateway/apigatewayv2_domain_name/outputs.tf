output "target_domain_name" {
  description = "(Computed) The target domain name."
  value       = aws_apigatewayv2_domain_name.this.domain_name_configuration[0].target_domain_name
}

output "domain_name_hosted_zone_id" {
  description = "(Computed) The Amazon Route 53 Hosted Zone ID of the endpoint."
  value       = aws_apigatewayv2_domain_name.this.domain_name_configuration[0].hosted_zone_id
}

