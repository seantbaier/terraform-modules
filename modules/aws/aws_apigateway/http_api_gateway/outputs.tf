output "execution_arn" {
  description = "The ARN prefix to be used in an aws_lambda_permission's source_arn attribute or in an aws_iam_policy to authorize access to the @connections API. See the Amazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_api.this.execution_arn
}

output "aws_apigatewayv2_stage_id" {
  description = "API Gateway Stage Id for the aws_apigatewayv2_api_mapping"
  value = aws_apigatewayv2_stage.this.id
}

output "id" {
  description = "API Gateway Id"
  value = aws_apigatewayv2_api.this.id
}