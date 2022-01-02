# Internet VPC
resource "aws_vpc" "main" {
    cidr_block = "${var.CIDR_BLOCK}"
    instance_tenancy = "${var.INSTANCE_TENANCY}"
    enable_dns_support = "${var.ENABLE_DNS_SUPPORT}"
    enable_dns_hostnames = "${var.ENABLE_DNS_HOSTNAMES}"
    enable_classiclink = "${var.ENABLE_CLASSIC_LINK}"

    tags = merge(
        var.VPC_TAGS,
        {
            Name = "${var.VPC_NAME}"
        },
    )
}
