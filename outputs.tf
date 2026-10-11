output "service_account_tokens_id" {
  description = "Map of id values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no id are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_account_tokens_expiration" {
  description = "Map of expiration values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no expiration are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.expiration if v.expiration != null && length(v.expiration) > 0 }
}
output "service_account_tokens_has_expired" {
  description = "Map of has_expired values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no has_expired are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.has_expired if v.has_expired != null }
}
output "service_account_tokens_key" {
  description = "Map of key values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no key are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.key if v.key != null && length(v.key) > 0 }
  sensitive   = true
}
output "service_account_tokens_name" {
  description = "Map of name values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no name are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_account_tokens_seconds_to_live" {
  description = "Map of seconds_to_live values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no seconds_to_live are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.seconds_to_live if v.seconds_to_live != null }
}
output "service_account_tokens_service_account_id" {
  description = "Map of service_account_id values across all service_account_tokens, keyed the same as var.service_account_tokens except keys with no service_account_id are omitted"
  value       = { for k, v in grafana_service_account_token.service_account_tokens : k => v.service_account_id if v.service_account_id != null && length(v.service_account_id) > 0 }
}

