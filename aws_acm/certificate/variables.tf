variable "create" {
  description = "Create resource conditionally."
  type        = bool
  default     = true
}

variable "app_name" {
  description = "Application/project name."
  type        = string
}


variable "environment" {
  description = "Name of the environment the resource is provisioned in"
  type        = string
}

variable "domain_name" {
  description = "Domain name for the certifcate."
  type        = string
}

variable "subject_alternative_names" {
  description = "List of alternative sub domains to be validated against."
  type        = list(any)
}

variable "validation_method" {
  description = "The type of method used to validate the certificate. DNS or EMAIL"
  type        = string
}
