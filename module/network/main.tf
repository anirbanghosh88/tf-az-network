resource "azurerm_resource_group" "this" {
  name     = local.rgname
  location = var.location
}
resource "azurerm_virtual_network" "this" {
  name          = local.vnetname
  location      = var.location
  resource_group_name = local.rgname
  address_space = [var.address_space]
  tags          = local.tags
}
