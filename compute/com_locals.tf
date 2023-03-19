locals {
  vm_name = "${var.environment}-vm"
  vm_nic = "${var.environment}-nic"
  tags = {
    env      = var.environment,
    location = var.location
  }

}