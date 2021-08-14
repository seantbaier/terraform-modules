variable "create" {
  description = "Create resource conditionally."
  type        = bool
  default     = true
}

variable "domain_name" {
  description = "Domain name for the certifcate."
  type        = string
}

variable "alias_zone_id" {
  description = "The Amazon Route 53 Hosted Zone ID of the endpoint. (Computed from aws_apigatewayv2_api)"
  type       = string
  default = null
}

variable "zone_id" {
  description = "Route53 hosted zone_id"
  type        = string
}

variable "alias_name" {
  description = "The Amazon Route 53 Hosted Zone ID of the endpoint. (Computed from aws_apigatewayv2_api)"
  type     = string
  default = null
}

variable "is_alias" {
  description = "Bool for if this is an alias record"
  type = bool
  default = false
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

variable "validate_certificate" {
  description = "Request validation."
  type        = bool
}
