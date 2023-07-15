module "network" {
  source = "github.com/manishaguda/tf-module-vpc"
  env            = var.env
  default_vpc_id = var.default_vpc_id

  for_each       = var.vpc
  cidr_block     = each.value.cidr_block
  public_subnets_cidr = each.value.subnets_cidr
  private_subnets_cidr = each.value.subnets_cidr
}