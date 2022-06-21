
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "example-org-e99cbc"

    workspaces {
      name = "webserver-aws-dev"
    }
  }
}

