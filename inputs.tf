variable "policies" {}
locals {
  policies = split(",",var.policies)
}
