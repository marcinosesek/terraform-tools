resource "aws_subnet" "subnet" {
    vpc_id = "${var.VPC_ID}"
    cidr_block = "${var.SUBNET_CIDR_BLOCK}"
    map_public_ip_on_launch = "${var.PUBLIC_SUBNET}"
    availability_zone = "${var.SUBNET_AZ}"

    tags = merge(
        var.SUBNET_TAGS,
        {
            Name = format("%s-%s-subnet", var.SUBNET_NAME_PREFIX, var.PUBLIC_SUBNET == true ? "public" : "private")
        },
    )
}