variable "env" {
  description = "Name of the environment the resources are being deployed to."
  type        = string
  default     = "dev"
}

variable "app_name" {
  description = "Name of application"
  type = string
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

variable "image_uri" {
  description = "Image uri for lambda docker container"
  type = string
}
