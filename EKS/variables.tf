variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnets" {
  description = "subnets CIDR"
  type        = list(string)
}

variable "private_subnets" {
  description = "subnets CIDR"
  type        = list(string)
}