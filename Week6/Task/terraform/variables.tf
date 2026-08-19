variable "project_name" {
  description = "Name of the project"
  type = string
  default = "Davine Devops Internship"
}
variable "environment" {
  description = "Deployment env"
  type = string
  default = "Development"
}

variable "filename" {
  description = "File created by terraform"
  type = string
  default = "project-info.txt"
}