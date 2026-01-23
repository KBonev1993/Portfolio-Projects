resource "aws_vpc" "secure_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "secure-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.secure_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.secure_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "private-subnet"
  }
}
