terraform {
	required_providers {
		local = {
			source = "hashicorp/local"
			version = "~> 2.5"
		}
	}
	required_version = ">= 1.0"
}
provider "local" {}

resource "local_file" "project_info" {
	filename = var.filename

	content = <<-EOT
	Project: ${var.project_name}
	Environment: ${var.environment}
	Managed by: Terraform
    EOT
}
