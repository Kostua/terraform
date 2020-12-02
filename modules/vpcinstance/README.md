## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 3.16.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.16.0 |
| tls | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone | availability zone to create subnet | `string` | n/a | yes |
| cidr\_subnet | CIDR block for the subnet | `string` | n/a | yes |
| cidr\_vpc | CIDR block for the VPC | `string` | n/a | yes |
| environment | n/a | `string` | n/a | yes |
| instance\_ami | AMI for aws EC2 instance | `string` | n/a | yes |
| instance\_type | Type for aws EC2 instance | `string` | n/a | yes |
| region | The AWS region to create things in. | `string` | n/a | yes |
| vpc\_name | Name of VPC | `string` | n/a | yes |
| vpc\_tags | Tags to apply to resources created by VPC module | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance\_id | The instance ID |
| private\_key\_pem | Generated private key pem |
| public\_instance\_dns | DNS name of the instance |
| public\_instance\_ip | The public instance IP |
| public\_route\_table\_ids | The public route table ID |
| public\_subnets | The public subnet ID of the VPC |
| vpc\_id | The ID of the VPC |
