data "aws_vpc" "selected_vpc" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_security_group_rule" "ingress_rules" {
  count = length(var.INGRESS_RULES)

  type              = "ingress"
  from_port         = var.INGRESS_RULES[count.index].from_port
  to_port           = var.INGRESS_RULES[count.index].to_port
  protocol          = var.INGRESS_RULES[count.index].protocol
  cidr_blocks       = [var.INGRESS_RULES[count.index].cidr_block]
  description       = var.INGRESS_RULES[count.index].description
  security_group_id = aws_security_group.instance_security_group.id
}

resource "aws_security_group" "instance_security_group" {
  vpc_id = data.aws_vpc.selected_vpc.id
  name   = var.SECURITY_GROUP_NAME

  description = var.SECURITY_GROUP_DESCRIPTION

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.SECURITY_GROUP_NAME}"
  }
}