variable "region" {
  description = "The AWS region to create things in."
}

variable "eip_tags" {
  description = "Tags to apply to resources created by EIP module"
  type        = map(string)
  default = {
    Terraform = "true"
  }
}
