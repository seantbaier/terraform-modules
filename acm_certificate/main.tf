locals {
  domain_name              = var.domain_name
  subject_alternative_name = "*.${var.domain_name}"
  zone_id                  = var.zone_id

  tags = {
    App         = var.app_name
    Terraform   = true
    Environment = var.environment
  }
}

resource "aws_acm_certificate" "this" {
  domain_name               = local.domain_name
  subject_alternative_names = local.subject_alternative_name
  validation_method         = "DNS"

  tags = local.tags

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "validation" {
  zone_id         = var.zone_id
  name            = local.validation_domain["resource_record_name"]
  type            = local.validation_domain["resource_record_type"]
  ttl             = 60
  allow_overwrite = true

  records = [
    local.validation_domain["resource_record_value"]
  ]

  depends_on = [aws_acm_certificate.this]
}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = aws_route53_record.validation.*.fqdn
}
