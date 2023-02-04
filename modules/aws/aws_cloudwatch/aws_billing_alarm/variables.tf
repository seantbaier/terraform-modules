variable "environment" {
  description = "Environment resource is used in"
  type        = string

}

variable "app_name" {
  description = "Name of the application"
  type        = string
}


variable "threshold" {
  description = "Limit of measured unit that will trigger the alarm"
  type        = number
}


variable "endpoint" {
  description = "Email address"
  type        = string
}
