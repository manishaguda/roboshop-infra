module "network" {
  source = "https://github.com/manishaguda/tf-module-vpc.git"

  for_each = var.vpc
  cidr_block = each.value.cidr_block
}
