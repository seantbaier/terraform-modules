output "apigatewayv2_domain_name_configuration" {
  description = "The domain name configuration"
  value       = aws_apigatewayv2_domain_name.this[0].domain_name_configuration
}

output "apigatewayv2_stage_execution_arn" {
  description = "Apigateway Stage execution arn."
  value       = aws_apigatewayv2_stage.this[0].execution_arn
}

output "apigatewayv2_stage_invoke_url" {
  description = "URL to invoke the API pointing to the stage, e.g.,"
  value       = aws_apigatewayv2_stage.this[0].invoke_url
}
