variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}
variable "AMIS" {
    type = map(string)
    default = {
        us-west-1 = "ami-13be557e"
        us-west-2 = "ami-06b94666"
        eu-west-1 = "ami-844e0bf7"
    }
}

# VPC variables
variable "VPC_NAME" {
    type = string
    description = "VPC name"
    default = "my-vpc"
}

variable "CIDR_BLOCK" {
    type = string
    description = "VPC cidr block"
    default = "10.0.0.0/16"
}

variable "INSTANCE_TENANCY" {
    type = string
    description = "VPC instance tenancy"
    default = "default"
}

variable "ENABLE_DNS_SUPPORT" {
    type = bool
    description = "Enable VPC DNS support"
    default = true
}

variable "ENABLE_DNS_HOSTNAMES" {
    type = bool
    description = "Enable VPC DNS hostnames"
    default = true
}

variable "ENABLE_CLASSIC_LINK" {
    type = bool
    description = "Enable VPC classic link"
    default = false
}

variable "VPC_TAGS" {
    type = map(string)
    description = "VPC tags"
    default = {
        vpc_tag1 = "vpc_value1"
    }
}
