variable "aws_region" {
  type = string
  description = "AWS region to use for resource deployment."
}

variable "vpc_tags" {
  type = map
  description = "Map of the tags to use for the created VPC."
}

variable "vpc_cidr" {
  type = string
  description = "CIDR to use for the VPC."
}

variable "vpc_subnets" {
  type = list(object({
    private_cidr_block = string
    public_cidr_block = string
    private_subnet_tags = map
    public_subnet_tags = map
  }))
  description = "A map of objects to use for subnet creation"
}