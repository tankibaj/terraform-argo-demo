# Specify the Terraform version and local provider
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1.0"
    }
  }

  required_version = ">= 0.12"
}

# Configure the local provider
provider "local" {}

# Resource to create the first text file
resource "local_file" "file1" {
  content  = "This is the first test file created by Terraform."
  filename = "${path.module}/testfile1.txt"
}

# Resource to create the second text file
resource "local_file" "file2" {
  content  = "This is the second test file created by Terraform."
  filename = "${path.module}/testfile2.txt"
}
