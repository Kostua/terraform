variable "vault_addr" {
  description = "Vault server address"
  type        = string
  default     = "http://127.0.0.1:8200"
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"

}

variable "vault_backend" {
  description = "The path to the AWS secret backend to read credentials from"
  type        = string
  default     = "aws"
}

variable "vault_role" {
  description = "The name of the AWS secret backend role to read credentials from"
  type = string
  default = "devops-role"
}

variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
  default     = "terraform-cloudsbits-state"
}

variable "table_name" {
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  type        = string
  default     = "terraform.locks"
}
