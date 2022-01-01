# Route Accociations
resource "aws_route_table_association" "main-route-table-association" {
    subnet_id = "${var.SUBNET_ID}"
    route_table_id = "${var.ROUTE_TABLE_ID}"
}