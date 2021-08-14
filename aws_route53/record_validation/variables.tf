variable "zone_id" {
  description = "Id for the created route53 zone."
  type       = string
}

  name            = var.resource_record_name
  type            = var.resource_record_type
  ttl             = var.dns_ttl

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


variable "wait_for_validation" {
  description = "Request to wait for validation to succeed."
  type        = bool
}

variable "validate_certificate" {
  description = "Request validation."
  type        = bool
}

variable "dns_ttl" {
  description = "dns time to live"
  type        = number
}
