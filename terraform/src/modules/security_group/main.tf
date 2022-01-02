resource "aws_security_group" "security-group" {
    vpc_id = "${var.VPC_ID}"
    name = "${var.SECURITY_GROUP_NAME}"

    description = "${var.SECURITY_GROUP_DESCRIPTION}"

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = merge(
        var.SECURITY_GROUP_TAGS,
        {
            Name = "${var.SECURITY_GROUP_NAME}"
        },
    )
}