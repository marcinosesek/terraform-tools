variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "VPC_ID" {
    type = string
    description = "Subnet VPC id"
    default = ""
}

variable "SECURITY_GROUP_NAME" {
    type = string
    description = "Security group name"
    default = "example-sg"
}

variable "SECURITY_GROUP_DESCRIPTION" {
    type = string
    description = "Security group description"
    default = "Security group description"
}

variable "SUBNET_CIDR_BLOCK" {
    type = string
    description = "Subnet cidr block"
    default = "10.0.1.0/24"
}

variable "SECURITY_GROUP_TAGS" {
    type = map(string)
    description = "Security groupb tags"
    default = {
        sg_tag = "security_group_value"
    }
}
