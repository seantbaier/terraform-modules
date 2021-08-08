variable "app_name" {
  description = "Name of app used in repositry url"
  type        = string
}

variable "ecr_repository_url" {
  description = "The ecr repo uri that the image will reside in"
  type        = string
}

variable "image_tag" {
  description = "Image tag name"
  type        = string
  default     = "latest"
}

variable "source_path" {
  description = "Path to directory containing Dockerfile"
  type        = string
}

variable "docker_file_path" {
  description = "Dockerfile"
  type        = string
  default     = "Dockerfile"
}
