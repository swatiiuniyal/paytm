variable "vpc_cidr" {
default="172.31.0.0/16"
}
variable "tenancy" {
default="dedicated"
}

variable "vpc_id" {}

variable "subnet_cidr" {
default="172.0.0.0/24"
}
