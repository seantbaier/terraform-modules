resource "aws_acm_certificate_validation" "this" {
  certificate_arn         = var.aws_acm_certificate_arn
  validation_record_fqdns = var.aws_route53_record.validation.*.fqdn
}
