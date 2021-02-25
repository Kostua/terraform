# S3 Remote State 

This configuration create an 
S3 bucket and DynamoDB table in an AWS. 
The S3 bucket and DynamoDB table is used as a 
[remote backend for Terraform](https://www.terraform.io/docs/backends/).

## Quick start

```
$ vault login -method=github token=$GITHUB_TOKEN
$ export VAULT_TOKEN=<VAULT TOKEN>
$ terraform apply
```

Specify a name for the AWS region, S3 bucket and DynamoDB table in `variables.tf` using the `default` parameter:

```hcl
variable "region" {
  description = "AWS region"
  type        = string
  default     = "<AWS REGION NAME>"
  
variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
  default     = "<YOUR BUCKET NAME>"
}

variable "table_name" {
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  type        = string
  default     = "<YOUR TABLE NAME>"
}

variable "vault_addr" {
  description = "Vault server address"
  type        = string
}

variable "vault_backend" {
  description = "The path to the AWS secret backend to read credentials from"
  type        = string
}

variable "vault_role" {
  description = "The name of the AWS secret backend role to read credentials from"
  type = string
}



```

Deploy the code:

```
terraform init
terraform apply
```

