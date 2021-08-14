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
