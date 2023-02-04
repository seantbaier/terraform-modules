data "aws_caller_identity" "current" {}

resource "aws_cloudwatch_metric_alarm" "billing_alarm" {
  alarm_name          = "${var.app_name}_billing_alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = "21600"
  statistic           = "Maximum"
  threshold           = "10"
  alarm_description   = "Billing alarm by account"
  alarm_actions       = [var.billing_alarm_topic.arn]

  dimensions = {
    Currency      = "USD"
    LinkedAccount = data.aws_caller_identity.current.account_id
  }
}
