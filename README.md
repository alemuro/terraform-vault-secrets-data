<!-- BEGIN_TF_DOCS -->
# terraform-vault-secrets

This module is used to retrieve secrets from HashiCorp Vault or
OpenBao in an easy way.

It requires a list of secrets, and returns a map with the content
of each secret (identified by its name).

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | ~> 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secrets"></a> [secrets](#input\_secrets) | List of secret names to retrieve from Vault | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_values"></a> [values](#output\_values) | n/a |

## Examples

```hcl
module "secrets" {
  source  = "alemuro/secrets-data/vault"
  version = "1.0.0"

  secrets = [ "cloudflare", "grafana" ]
}
```
<!-- END_TF_DOCS -->