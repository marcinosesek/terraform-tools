module "vpc" {
  source = "../modules/vpc"

  VPC_NAME = "${var.VPC_SETTINGS.name}"
  CIDR_BLOCK = "${var.VPC_SETTINGS.cidr_block}"
  INSTANCE_TENANCY = "${var.VPC_SETTINGS.instance_tenancy}"
  ENABLE_DNS_SUPPORT = "${var.VPC_SETTINGS.enable_dns_support}"
  ENABLE_DNS_HOSTNAMES = "${var.VPC_SETTINGS.enable_dns_hostnames}"
  ENABLE_CLASSIC_LINK = "${var.VPC_SETTINGS.enable_classic_link}"
  VPC_TAGS = "${var.VPC_SETTINGS.tags}"
}


module "public_subnets" {
  source = "../modules/subnet"
  
  for_each = {for subnet in "${var.PUBLIC_SUBNETS}": subnet.az => subnet}
  VPC_NAME = "${var.VPC_SETTINGS.name}"
  VPC_ID = "${module.vpc.vpc_id}"
  SUBNET_CIDR_BLOCK = "${each.value.cidr_block}"
  PUBLIC_SUBNET = "${each.value.is_public}"
  SUBNET_AZ = "${each.value.az}"
}

module "private_subnets" {
  source = "../modules/subnet"
  
  for_each = {for subnet in "${var.PRIVATE_SUBNETS}": subnet.az => subnet}
  VPC_NAME = "${var.VPC_SETTINGS.name}"
  VPC_ID = "${module.vpc.vpc_id}"
  SUBNET_CIDR_BLOCK = "${each.value.cidr_block}"
  PUBLIC_SUBNET = "${each.value.is_public}"
  SUBNET_AZ = "${each.value.az}"
}