terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIATVHUQTV3NACGVBSX"
  secret_key = "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"
}