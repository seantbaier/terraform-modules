variable "name" {
  description = "Name of the hosted zone."
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

variable "app_name" {
  description = "Application/project name."
  type        = string
}
variable "subject_alternative_names" {
  description = "List of alternative sub domains to be validated against."
  type        = list(any)
}


variable "create" {
  description = "Create resource conditionally."
  type        = bool
  default     = true
}

variable "tags" {
  description = "AWS resrouce tags."
  type        = map(any)
  default     = {}
}

variable "wait_for_validation" {
  description = "Request to wait for validation to succeed."
  type        = bool
}

variable "validate_certificate" {
  description = "Request validation."
  type        = bool
}


variable "validation_method" {
  description = "The type of method used to validate the certificate. DNS or EMAIL"
  type        = string
}

variable "dns_ttl" {
  description = "dns time to live"
  type        = number
}
