terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.6.0"
    }
  }
}

resource "local_file" "example" {
  filename = "example.txt"
  content  = <<-EOT
    This file have been created by Terraform/OpenTofu!
  EOT
}

output "file_path" {
  value = local_file.example.filename
}
