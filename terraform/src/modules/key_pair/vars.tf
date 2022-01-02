variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "eu-west-1"
}

variable "KEY_PAIR_NAME" {
    type = string
    description = "Key pait name"
    default = "example-key-pair"
}

variable "PUBLIC_KEY" {
    type = string
    description = "Public Key path"
    default = "keys/mykey.pub"
}

variable "KEY_PAIR_TAGS" {
    type = map(string)
    description = "Key Pair tags"
    default = {
        kp_tag = "key_pair_value"
    }
}