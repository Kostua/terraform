# S3 Remote State 

This configuration create an 
S3 bucket and DynamoDB table in an AWS. 
The S3 bucket and DynamoDB table is used as a 
[remote backend for Terraform](https://www.terraform.io/docs/backends/).

## Quick start


```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
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



```

Deploy the code:

```
terraform init
terraform apply
```

