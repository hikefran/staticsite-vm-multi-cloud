terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.23"
    }
  }
  backend "s3" {
    bucket         = "s3-kledelas"
    key            = "terraform.tfstate"
    dynamodb_table = "dy-kledelas"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}