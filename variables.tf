variable "service_account_tokens" {
  description = <<EOT
Map of service_account_tokens, attributes below
Required:
    - name
    - service_account_id
Optional:
    - seconds_to_live
EOT

  type = map(object({
    name               = string
    service_account_id = string
    seconds_to_live    = optional(number)
  }))
}

