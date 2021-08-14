resource "aws_route53_record" "ipv4" {
  name    = var.domain_name
  type    = "A"
  zone_id = var.route53_hosted_zone_id

  alias {
    name                   = var.target_domain_name
    zone_id                = var.domain_name_hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "ipv6" {
  name    = var.domain_name
  type    = "AAAA"
  zone_id = var.route53_hosted_zone_id

  alias {
    name                   = var.target_domain_name
    zone_id                = var.domain_name_hosted_zone_id
    evaluate_target_health = false
  }
}
