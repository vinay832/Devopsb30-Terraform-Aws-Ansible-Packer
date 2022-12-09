resource "aws_vpc" "ohio-vpc" {
  provider             = aws.ohio
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name        = var.vpc_name
    Owner       = "vinay k"
    environment = var.environment
  }
}

resource "aws_internet_gateway" "ohio-igw" {
  provider = aws.ohio
  vpc_id   = aws_vpc.ohio-vpc.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}
resource "aws_subnet" "ohio-subnet1-public" {
  provider          = aws.ohio
  vpc_id            = aws_vpc.ohio-vpc.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-2a"

  tags = {
    Name = "${var.vpc_name}-public_subnet1"
  }
}

resource "aws_subnet" "ohio-subnet2-public" {
  provider          = aws.ohio
  vpc_id            = aws_vpc.ohio-vpc.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-2b"

  tags = {
    Name = "${var.vpc_name}-public_subnet2"
  }
}

resource "aws_subnet" "ohio-subnet3-public" {
  provider          = aws.ohio
  vpc_id            = aws_vpc.ohio-vpc.id
  cidr_block        = var.public_subnet3_cidr
  availability_zone = "us-east-2c"

  tags = {
    Name = "${var.vpc_name}-public_subnet3"
  }
}