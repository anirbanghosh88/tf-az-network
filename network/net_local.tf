locals {
  rg_name   = var.rg_name
  vnet_name = "${var.environment}-vnet-001"
  subnet_names = "${var.environment}-sub"
  tags = {
    env      = var.environment,
    location = var.location
  }

}