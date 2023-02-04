variable "log_group_name" {
  description = "Name of the log group"
  type        = string
}


variable "retention_in_days" {
  description = "(Optional) - Number of days until logs are deleted."
  type        = number
  default     = 7
}
