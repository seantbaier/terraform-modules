resource "aws_route53_record" "this" {
  zone_id                          = var.zone_id
  name                             = var.name
  type                             = var.type
  set_identifier                   = var.set_identifier
  health_check_id                  = var.health_check_id
  multivalue_answer_routing_policy = var.multivalue_answer_routing_policy
  allow_overwrite                  = var.allow_overwrite

  alias {
    name                   = var.alias["name"]
    zone_id                = var.alias["zone_id"]
    evaluate_target_health = var.alias["evaluate_target_health"]
  }
}
