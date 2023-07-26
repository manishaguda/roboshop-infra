module "vpc" {
  source         = "github.com/manishaguda/tf-module-vpc"
  env            = var.env
  default_vpc_id = var.default_vpc_id

  for_each             = var.vpc
  cidr_block           = each.value.cidr_block
#  subnets             = each.value.subnets
  public_subnets       = each.value.public_subnets
  private_subnets      = each.value.private_subnets
  availability_zones   = each.value.availability_zones
}

output "vpc" {
  value = module.vpc
}
