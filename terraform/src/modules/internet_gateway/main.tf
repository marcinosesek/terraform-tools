resource "aws_internet_gateway" "internet-gw" {
    vpc_id = "${var.VPC_ID}"
    tags = merge(
        var.INTERNET_GATEWAY_TAGS,
        {
            Name = "${var.INTERNET_GATEWAY_NAME}"
        },
    )
}