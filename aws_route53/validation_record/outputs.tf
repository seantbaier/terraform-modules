output "validation_record_fqdns" {
  description = "AWS Route53 Validation Record fqdns"
  value       = aws_route53_record.this.*.fqdn
}
