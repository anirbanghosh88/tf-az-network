variable "environment" {
  type = string
}
variable "location" {
  type = string
}
variable "rg_name" {
  type = string
}
variable "address_space" {
  type = string
}
variable "subnet_count" {
  type = number
}
variable "subnet_prefix" {
  type = list(string)
}
