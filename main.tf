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
  tags = {
    Name = "terraform-cloud-vpc"
  }
}
