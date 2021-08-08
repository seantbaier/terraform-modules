variable "environment" {
  description = "Name of the environment the resources are being deployed to."
  type        = string
  default     = "dev"
}
variable "create" {
  description = "Create resource or not."
  type        = bool
  default     = true
}

variable "function_name" {
  description = "Name of function"
  type        = string
}
