terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = var.vpc_tags
}

module "subnets" {
  source = "modules/subnet"
  for_each = var.vpc_subnets

  vpc_id = aws_vpc.main.id
  private_cidr_block = each.value.private_cidr_block
  public_cidr_block = each.value.public_cidr_block
  private_subnet_tags = each.value.private_subnet_tags
  public_subnet_tags = each.value.public_subnet_tags
}