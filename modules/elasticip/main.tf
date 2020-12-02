terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  version = ">= 3.16.0"
  region  = var.region
}

resource "aws_eip" "elasticip" {
  vpc  = true
  tags = var.eip_tags
}