locals {
  rgname   = "${var.environment}-rg-001"
  vnetname = "${var.environment}-vnet-001"
  tags = {
    env      = var.environment,
    location = var.location
  }
}