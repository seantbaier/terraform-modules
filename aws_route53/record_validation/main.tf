resource "aws_route53_record" "validation" {
  zone_id         = var.zone_id
  name            = var.resource_record_name
  type            = var.resource_record_type
  ttl             = var.dns_ttl
  allow_overwrite = true

  records = [
    resource_record_value
  ]
}
