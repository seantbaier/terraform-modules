# Output variable definitions

output "invoke_arn" {
  description = "Invoke ARN of the Lambda"
  value       = aws_lambda_function.this.invoke_arn
}

output "arn" {
  description = "ARN of the Lambda"
  value       = aws_lambda_function.this.arn
}

output "function_name" {
  description = "AWS Lambda function name."
  value       = aws_lambda_function.this.function_name
}
