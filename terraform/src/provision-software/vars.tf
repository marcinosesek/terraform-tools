variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

variable "SECURITY_GROUP_NAME" {
  type        = string
  description = "Security group name"
  default     = "allow-ssh-from-cidr"
}

variable "SECURITY_GROUP_DESCRIPTION" {
  type        = string
  description = "Security group description"
  default     = "Security group description"
}

variable "ALLOW_SSH_CIDR" {
  default = "0.0.0.0/0"
}

variable "INGRESS_RULES" {
  type = list(object({
    description = string
    from_port = number
    to_port = number
    protocol = string
    cidr_block = string
  }))
  default = [
    {
      description = "Allow SSH access "
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_block = "0.0.0.0/0"
    },
    {
      description = "Allow HTTP access "
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_block = "0.0.0.0/0"
    },
  ]
}