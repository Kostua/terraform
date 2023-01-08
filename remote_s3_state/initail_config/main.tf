terraform {
  required_version = "~> 1.3.7"
}

provider "vault" {
  skip_tls_verify = true
}

data "vault_aws_access_credentials" "aws_creds" {
  backend = var.vault_backend
  role    = var.vault_role
}

provider "aws" {
  access_key = data.vault_aws_access_credentials.aws_creds.access_key
  secret_key = data.vault_aws_access_credentials.aws_creds.secret_key
  region     =  var.region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name
  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Environment = "system"
    Service     = "terraform"
  }

}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "system"
    Service     = "terraform"
  }

}



