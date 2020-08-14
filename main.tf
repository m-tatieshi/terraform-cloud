variable "access_key"{}
variable "secret_key"{}


provider "aws" {
  version    = "~> 2.39"
  region     = "ap-northeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "component" {
  cidr_block                       = "10.10.10.0/24"
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_support               = var.enable_dns_support
  enable_dns_hostnames             = var.enable_dns_hostnames
  tags = {
    Name = "terraform-cloud-vpc"
  }
}
