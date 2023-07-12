module "network" {
  source = "github.com/manishaguda/tf-module-vpc"
  env = var.env

  for_each = var.vpc
  cidr_block = each.value.cidr_block
}
