module "vpc" {
  source         = "github.com/manishaguda/tf-module-vpc"
  env            = var.env
  default_vpc_id = var.default_vpc_id

  for_each   = var.vpc
  cidr_block = each.value.cidr_block
  subnets    = each.value.subnets

}

#  public_subnets_cidr  = each.value.public_subnets_cidr
#  private_subnets_cidr = each.value.private_subnets_cidr
#  availability_zones   = each.value.availability_zones
