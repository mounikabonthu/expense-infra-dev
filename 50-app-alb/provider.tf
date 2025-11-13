terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.20.0"
    }
  }

  backend "s3" {
    bucket         = "82s-moni-tf-remote-state-dev"
    key            = "expense-dev-app-alb" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region         = "us-east-1"
    dynamodb_table = "82s-moni-tf-remote-state-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}