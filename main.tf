terraform {
  required_version = ">= 1.5.0"
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~> 4.0"
    }
  }
}

data "vault_kv_secret_v2" "secrets" {
  for_each = toset(var.secrets)

  mount = "/kv"
  name  = each.key
}
