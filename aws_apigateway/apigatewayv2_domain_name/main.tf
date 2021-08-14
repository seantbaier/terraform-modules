resource "aws_apigatewayv2_domain_name" "this" {
  domain_name = var.domain_name

  domain_name_configuration {
    certificate_arn = var.aws_acm_certificate_arn
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}

resource "aws_apigatewayv2_api_mapping" "this" {
  api_id      = var.aws_apigatewayv2_api_id
  domain_name = aws_apigatewayv2_domain_name.this.id
  stage       = var.aws_apigatewayv2_stage_id
}
