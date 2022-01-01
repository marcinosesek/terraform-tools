variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "SUBNET_ID" {
    type = string
    description = "Subnet id"
    default = ""
}

variable "ROUTE_TABLE_ID" {
    type = string
    description = "Route Table Id"
    default = "example-rt"
}
