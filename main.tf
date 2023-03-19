resource "azurerm_resource_group" "this" {
  name     = "rg-network"
  location = "eastus"
}
module "vnet" {
  source        = "./modules/network"
  environment   = "dev"
  location      = azurerm_resource_group.this.location
  address_space = "10.0.0.0/16"
  rg_name       = azurerm_resource_group.this.name
  subnet_count  = 2
  subnet_prefix = ["10.0.1.0/24", "10.0.2.0/24"]
  
}
