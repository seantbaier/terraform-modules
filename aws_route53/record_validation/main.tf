locals {
  # Get distinct list of domains and SANs
  distinct_domain_names = distinct(
    [for s in concat([var.domain_name], var.subject_alternative_names) : replace(s, "*.", "")]
  )

  # Copy domain_validation_options for the distinct domain names
  validation_domains = var.create ? [for k, v in aws_acm_certificate.this[0].domain_validation_options : tomap(v) if contains(local.distinct_domain_names, replace(v.domain_name, "*.", ""))] : []

  base_tags = {
    App       = var.app_name
    Terraform = true
  }

  tags = merge(local.base_tags, var.tags)
}


resource "aws_route53_record" "validation" {
  count = var.create && var.validation_method == "DNS" && var.validate_certificate ? length(local.distinct_domain_names) : 0

  zone_id         = aws_route53_zone.this.zone_id
  name            = element(local.validation_domains, count.index)["resource_record_name"]
  type            = element(local.validation_domains, count.index)["resource_record_type"]
  ttl             = var.dns_ttl
  allow_overwrite = true

  records = [
    element(local.validation_domains, count.index)["resource_record_value"]
  ]

  depends_on = [aws_acm_certificate.this]
}

resource "aws_route53_record" "ipv4" {
  name    = module.aws_apigatewayv2_api.custom_domain_name
  type    = "A"
  zone_id = var.route53_hosted_zone_id

  alias {
    name                   = module.aws_apigatewayv2_api.target_domain_name
    zone_id                = module.aws_apigatewayv2_api.domain_name_hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "ipv6" {
  name    = module.aws_apigatewayv2_api.custom_domain_name
  type    = "AAAA"
  zone_id = var.route53_hosted_zone_id

  alias {
    name                   = module.aws_apigatewayv2_api.target_domain_name
    zone_id                = module.aws_apigatewayv2_api.domain_name_hosted_zone_id
    evaluate_target_health = false
  }
}
