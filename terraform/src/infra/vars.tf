variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

# VPC variables
variable "VPC_SETTINGS" {
    type = object({  
        name = string,   
        cidr_block = string,
        instance_tenancy = string,
        enable_dns_support = bool,
        enable_dns_hostnames = bool,
        enable_classic_link = bool,
        tags = map(string)
    })                    
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

variable "PUBLIC_SUBNETS" {
    type = list(object({
        cidr_block = string,
        az = string,
        is_public = bool,
        tags = map(string)
    }))
    description = "Public subnet definition"
    default = [
        {
            cidr_block = "10.0.1.0/24",
            az = "eu-west-1a",
            is_public = true,
            tags = {
                subnet_type = "public"
            }
        },
        {
            cidr_block = "10.0.2.0/24",
            az = "eu-west-1b",
            is_public = true,
            tags = {
                subnet_type = "public"
            }
        },
        {
            cidr_block = "10.0.3.0/24",
            az = "eu-west-1c",
            is_public = true,
            tags = {
                subnet_type = "public"
            }
        }
    ]
}

variable "PRIVATE_SUBNETS" {
    type = list(object({
        cidr_block = string,
        az = string,
        is_public = bool,
        tags = map(string)
    }))
    description = "Public subnet definition"
    default = [
        {
            cidr_block = "10.0.4.0/24",
            az = "eu-west-1a",
            is_public = false,
            tags = {
                subnet_type = "private"
            }
        },
        {
            cidr_block = "10.0.5.0/24",
            az = "eu-west-1b",
            is_public = false,
            tags = {
                subnet_type = "private"
            }
        },
        {
            cidr_block = "10.0.6.0/24",
            az = "eu-west-1c",
            is_public = false,
            tags = {
                subnet_type = "private"
            }
        }
    ]
}

