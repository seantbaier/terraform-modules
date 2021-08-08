
# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "sandbox"
  app_name       = "studiosauce"
  aws_account_id = "266568383880"
  aws_profile    = "sandbox"
}
