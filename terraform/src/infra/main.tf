module "vpc" {
  source = "../modules/vpc"

  VPC_NAME = "${var.VPC_NAME}"
  CIDR_BLOCK = "${var.CIDR_BLOCK}"
  INSTANCE_TENANCY = "${var.INSTANCE_TENANCY}"
  ENABLE_DNS_SUPPORT = "${var.ENABLE_DNS_SUPPORT}"
  ENABLE_DNS_HOSTNAMES = "${var.ENABLE_DNS_HOSTNAMES}"
  ENABLE_CLASSIC_LINK = "${var.ENABLE_CLASSIC_LINK}"
  VPC_TAGS = "${var.VPC_TAGS}"
}


module "public_subnets" {
  source = "../modules/subnet"
  
  for_each = {for subnet in "${var.PUBLIC_SUBNETS}": subnet.az => subnet}
  VPC_NAME = "${var.VPC_NAME}"
  VPC_ID = "${module.vpc.vpc_id}"
  SUBNET_CIDR_BLOCK = "${each.value.cidr_block}"
  PUBLIC_SUBNET = true
  SUBNET_AZ = "${each.value.az}"
}
