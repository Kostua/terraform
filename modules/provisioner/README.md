## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| private\_key\_pem | Generated private key | `any` | n/a | yes |
| public\_ip | Instance real IP address | `any` | n/a | yes |
| trigger\_public\_ip | Values that, when changed,will cause the resource to be replaced. | `any` | n/a | yes |
| username | Username on instance | `string` | n/a | yes |

## Outputs

No output.
