resource "aws_acm_certificate" "this" {
  count = var.create ? 1 : 0

  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method         = var.validation_method

  tags = {
    App         = var.app_name
    Terraform   = true
    Environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
  }
}
