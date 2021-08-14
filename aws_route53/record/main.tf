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