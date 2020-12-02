## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 3.16.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.16.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | The AWS region to create things in. | `any` | n/a | yes |
| eip\_tags | Tags to apply to resources created by EIP module | `map(string)` | <pre>{<br>  "Terraform": "true"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| elasticip\_eip | n/a |
| elasticip\_eip\_alloc\_id | The public Elastic IP |
