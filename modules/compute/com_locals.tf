locals {
  rg_name   = var.rg_name
 # vnet_name = "${var.environment}-vnet-001"
 # subnet_names = "${var.environment}-sub-001"
  vm_name = "${var.environment}-vm"
  vm_nic = "${var.environment}-nic"
  tags = {
    env      = var.environment,
    location = var.location
  }

}