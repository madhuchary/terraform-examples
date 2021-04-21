provider "aws" {
  region     = var.region
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr

  tags =  { Name = var.vpc_name }

}

resource "aws_subnet" "subnet1" {

vpc_id = aws_vpc.vpc.id
cidr_block = var.pubsub1
tags =  { Name = "Pubsub1" }

}
resource "aws_subnet" "subnet2" {

vpc_id = aws_vpc.vpc.id
cidr_block = var.pubsub2
tags =  { Name = "Pubsub2" }

}

resource "aws_internet_gateway" "igw" {

vpc_id = aws_vpc.vpc.id
tags =  { Name = "My_IGW" }

}

