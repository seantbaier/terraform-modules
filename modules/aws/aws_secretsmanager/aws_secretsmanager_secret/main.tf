resource "aws_secretsmanager_secret" "this" {
  name = var.name
}
