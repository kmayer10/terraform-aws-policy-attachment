variable "policies" {}
variable "role"{}
locals {
  policies = split(",",var.policies)
}
