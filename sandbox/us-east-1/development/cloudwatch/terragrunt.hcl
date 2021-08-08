locals {
  account_vars     = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  app_name    = local.account_vars.locals.app_name
  environment = local.environment_vars.locals.environment
}

include {
  path = find_in_parent_folders()
}

# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
inputs = {
  app_name    = local.app_name
  environment = local.environment
}
