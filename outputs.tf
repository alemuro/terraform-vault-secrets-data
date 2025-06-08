output "values" {
  value = { for k, v in data.vault_kv_secret_v2.secrets : k => v.data }
}