variable "domain_name" {
  description = "Domain name for the certifcate."
  type        = string
}

variable "zone_id" {
  description = "Zone id for the hosted zone that will be validating by DNS"
}

variable "environment" {
  description = "Environment the resource is provisioned in."
  type        = string
}

variable "app_name" {
  description = "Application/project name."
  type        = string
}
