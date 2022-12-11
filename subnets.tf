resource "aws_subnet" "public-subnets" {
  //count             = 4
  count             = length(distinct(var.public_cidrs))
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(distinct(var.public_cidrs), count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-public-subnet-${count.index + 1}"
  }
}
resource "aws_subnet" "private-subnets" {
  //count             = 4
  count             = length(distinct(var.private_cidrs))
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(distinct(var.private_cidrs), count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${var.vpc_name}-private-subnet-${count.index + 1}"
  }
}