variable "repo" {
  type        = "map"
  description = "Relative informations of repository"
}

variable "webhook" {
  type        = "map"
  default     = {}
  description = "Relative informations of webhook repository"
}
