variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

# VPC variables
variable "VPC_SETTINGS" {
    type = map(object({
        name = string,
        cidr_block = string,
        instance_tenancy = string,
        enable_dns_support = bool,
        enable_dns_hostnames = bool,
        enable_classic_link = bool,
        tags = map(string)
    }))
    description = "VPC settings"
    default = {
        name = "my-vpc",
        cidr_block = "10.0.0.0/16",
        instance_tenancy = "default",
        enable_dns_support = true,
        enable_dns_hostnames = true,
        enable_classic_link = false,
        tags = {
            vpc_tag = "my-vpc"
        }
    }
}

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
        vpc_tag = "infra_vpc"
    }
}

variable "PUBLIC_SUBNETS" {
    type = list(object({
        cidr_block = string,
        az = string
    }))
    description = "Public subnet definition"
    default = [
        {
            cidr_block = "10.0.1.0/24",
            az = "eu-west-1a"
        },
        {
            cidr_block = "10.0.2.0/24",
            az = "eu-west-1b"
        },
        {
            cidr_block = "10.0.3.0/24",
            az = "eu-west-1c"
        }
    ]
}
