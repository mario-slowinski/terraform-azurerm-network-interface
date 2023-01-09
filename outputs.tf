output "data" {
  description = "Network interface data."
  value       = length(var.private_ip_address_allocation) > 0 ? one(azurerm_network_interface.this[*]) : one(data.azurerm_network_interface.this[*])
  sensitive   = false
}
