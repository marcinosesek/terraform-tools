resource "aws_route_table" "main-route-table" {
    vpc_id = "${var.VPC_ID}"
    route {
        cidr_block = "${var.CIDR_BLOCK}"
        gateway_id = "${var.INTERNET_GATEWAY_ID}"
    }
    tags = merge(
        var.ROUTE_TABLE_TAGS,
        {
            Name = "${var.ROUTE_TABLE_NAME}"
        },
    )
}