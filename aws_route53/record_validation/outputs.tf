# Output variable definitions
output "zone_id" {
  description = "Id for the created route53 zone."
  value       = aws_route53_zone.this.zone_id
}

output "aws_acm_certificate_arn" {
  description = "ARN for the SSL certificate"
  value       = aws_acm_certificate.this[0].arn
}


output "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g. if SANs are defined. Only set if DNS-validation was used."
  value       = aws_acm_certificate.this[0].domain_validation_options
}
