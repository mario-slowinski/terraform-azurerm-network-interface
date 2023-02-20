data "azurerm_network_interface" "this" {
  count = length(var.private_ip_address_allocation) > 0 ? 0 : 1

  name                = length(var.name) > 0 ? var.name : replace(join(var.separator, local.names), " ", var.space)
  resource_group_name = length(var.resource_group_name) > 0 ? var.resource_group_name : replace(join(var.separator, local.names), " ", var.space)
}

resource "azurerm_network_interface" "this" {
  count = length(var.private_ip_address_allocation) > 0 ? 1 : 0

  name                = length(var.name) > 0 ? var.name : replace(join(var.separator, local.names), " ", var.space)
  resource_group_name = length(var.resource_group_name) > 0 ? var.resource_group_name : replace(join(var.separator, local.names), " ", var.space)
  location            = var.location
  ip_configuration {
    name                = length(var.ip_configuration_name) > 0 ? var.ip_configuration_name : replace(join(var.separator, local.names), " ", var.space)
    subnet_id = var.ip_configuration_subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }

  tags = length(var.tags) > 0 ? (
    var.tags
    ) : (
    { for tag in local.tags : tag.key => tag.value }
  )
}
