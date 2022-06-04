variable "vpc_id" {
  type = string
  description = "ID of the VPC to place the subnet in."
}

variable "private_cidr_block" {
  type = string
  description = "The CIDR block to use for private subnet creation."
}

variable "public_cidr_block" {
  type = string
  description = "The CIDR block to use for public subnet creation."
}

variable "private_subnet_tags" {
  type = map
  description = "A map of tags to use for private subnet creation"
}

variable "public_subnet_tags" {
  type = map
  description = "A map of tags to use for public subnet creation"
}