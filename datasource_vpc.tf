data "aws_vpc" "AWSB40-VPC" {
  id = "vpc-0dae296cb8bf02052"
}
resource "aws_subnet" "awsb40-subnet1-public" {
  vpc_id            = data.aws_vpc.AWSB40-VPC.id
  cidr_block        = "10.40.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "awsb40-public_subnet1"
  }
}
resource "aws_subnet" "awsb40-subnet2-public" {
  vpc_id            = data.aws_vpc.AWSB40-VPC.id
  cidr_block        = "10.40.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "awsb40-public_subnet1"
  }
}
resource "aws_subnet" "awsb40-subnet3-public" {
  vpc_id            = data.aws_vpc.AWSB40-VPC.id
  cidr_block        = "10.40.3.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name = "awsb40-public_subnet3"
  }
}