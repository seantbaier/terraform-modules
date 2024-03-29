data "aws_caller_identity" "current" {}


resource "aws_sns_topic" "billing_alarm_topic" {
  name = "${var.app_name}_billing_alarm_topic"

  delivery_policy = <<EOF
{
    "http": {
    "defaultHealthyRetryPolicy": {
      "minDelayTarget": 20,
      "maxDelayTarget": 20,
      "numRetries": 3,
      "numMaxDelayRetries": 0,
      "numNoDelayRetries": 0,
      "numMinDelayRetries": 0,
      "backoffFunction": "linear"
    },
    "disableSubscriptionOverrides": false
  }
}
EOF
}
