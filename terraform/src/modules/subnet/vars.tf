variable "VPC_NAME" {
    type = string
    description = "Subnet VPC name"
    default = ""
}

variable "VPC_ID" {
    type = string
    description = "Subnet VPC id"
    default = ""
}

variable "SUBNET_NAME_PREFIX" {
    type = string
    description = "Subnet name prefix"
    default = "example"
}

variable "SUBNET_CIDR_BLOCK" {
    type = string
    description = "Subnet cidr block"
    default = "10.0.1.0/24"
}

variable "SUBNET_TAGS" {
    type = map(string)
    description = "Subnet tags"
    default = {
        subnet_tag = "subnet_value"
    }
}
variable "PUBLIC_SUBNET" {
    type = bool
    description = "Subnet type"
    default = false
}

variable "SUBNET_AZ" {
    type = string
    description = "Subnet availability zone"
    default = "eu-west-1a"
}