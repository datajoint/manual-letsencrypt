terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  # from environment variables
}

locals {
  tags = {
    Scope = "Internal_RD",
    Contract = "DataJoint_Prod",
    Application = "manual-letsencrypt"
  }
}
