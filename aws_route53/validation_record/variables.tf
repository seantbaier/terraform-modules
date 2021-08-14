variable "create" {
  description = "Create resource conditionally."
  type        = bool
  default     = true
}

variable "domain_name" {
  description = "Domain name for the certifcate."
  type        = string
}

variable "zone_id" {
  description = "Route53 hosted zone_id"
  type        = string
}


variable "subject_alternative_names" {
  description = "List of alternative sub domains to be validated against."
  type        = list(any)
}

variable "validation_method" {
  description = "The type of method used to validate the certificate. DNS or EMAIL"
  type        = string
  default = null
}

variable "domain_validation_options" {
  description = "Domain validation options from AWS ACM Certificate"
  type        = list(any)
  default     = []
}

variable "dns_ttl" {
  description = "dns time to live"
  type        = number
  default = 60
}