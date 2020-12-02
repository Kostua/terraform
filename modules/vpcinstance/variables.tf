# Variables
variable "region" {
  description = "The AWS region to create things in."
  type        = string
}

variable "environment" {
  type = string
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "availability zone to create subnet"
  type        = string
}

variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type for aws EC2 instance"
  type        = string
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
}
