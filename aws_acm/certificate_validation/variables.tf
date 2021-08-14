variable "aws_acm_certificate_arn" {
  description = "AWS ACM Certifcate ARN"
  type = string
}

variable "validation_record_fqdns" {
  description = "AWS Route53 Validation Record fqdns"
  type = list(any)
}