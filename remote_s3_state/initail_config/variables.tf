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
