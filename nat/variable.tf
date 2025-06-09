variable "public_subnets" {
    type = list(string)
}

variable "vpc_id" {
  description = "The VPC ID where the NAT Gateway will be deployed"
  type        = string
}
