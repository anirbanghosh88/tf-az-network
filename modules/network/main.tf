/*resource "azurerm_resource_group" "this" {
  name     = local.rgname
  location = var.location
}
*/
resource "azurerm_virtual_network" "this" {
  name          = local.vnet_name
  location      = var.location
  resource_group_name = local.rg_name
  address_space = [var.address_space]
  tags          = local.tags
}
resource "azurerm_subnet" "this" {
  count = var.subnet_count
  name = "${local.subnet_names}-${count.index}"
  resource_group_name = local.rg_name
  virtual_network_name = local.vnet_name
  address_prefixes = [var.subnet_prefix[count.index]]
  depends_on = [
    azurerm_virtual_network.this
  ]
}
