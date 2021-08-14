variable "name" {
  description = "Name of the hosted zone."
  type        = string
}

variable "environment" {
  description = "Name of the environment the resource is provisioned in"
  type        = string
}


variable "domain_name" {
  description = "(Required) The domain name. Must be between 1 and 512 characters in length."
  type        = string
}
