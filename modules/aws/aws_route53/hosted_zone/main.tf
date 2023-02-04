resource "aws_route53_zone" "this" {
  name = var.name

  tags = {
    Environment = var.environment
    Name        = var.name
  }
}
