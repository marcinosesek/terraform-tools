variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "VPC_ID" {
    type = string
    description = "Route Table VPC id"
    default = ""
}

variable "INTERNET_GATEWAY_ID" {
    type = string
    description = "Internet Gateway Id"
    default = "example-ig"
}

variable "ROUTE_TABLE_NAME" {
    type = string
    description = "Route Table name"
    default = "example-rt"
}

variable "CIDR_BLOCK" {
    type = string
    description = "Cidr block"
    default = "0.0.0.0/0"
}

variable "ROUTE_TABLE_TAGS" {
    type = map(string)
    description = "Route Table tags"
    default = {
        rt_tag = "route_table_value"
    }
}
