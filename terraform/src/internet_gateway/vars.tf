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

variable "INTERNET_GATEWAY_NAME" {
    type = string
    description = "Internet Gateway name"
    default = "example-ig"
}

variable "INTERNET_GATEWAY_TAGS" {
    type = map(string)
    description = "Internet Gateway tags"
    default = {
        ig_tag = "internet_gateway_value"
    }
}
