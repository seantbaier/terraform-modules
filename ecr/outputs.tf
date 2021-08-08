variable "image_uri" {
  description = "Uri from the initial dummy image"
  value       = docker_registry_image.this.name
}
