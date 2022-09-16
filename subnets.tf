resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone="eu-central-1a"
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.2.0/24"
  availability_zone="eu-central-1b"
  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "public-3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.3.0/24"
  availability_zone="eu-central-1c"

  tags = {
    Name = "public-subnet-3"
  }
}

resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.11.0/24"
  availability_zone="eu-central-1a"

  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.12.0/24"
  availability_zone="eu-central-1b"

  tags = {
    Name = "private-subnet-2"
  }
}

resource "aws_subnet" "private-3" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "192.168.13.0/24"
  availability_zone="eu-central-1c"

  tags = {
    Name = "private-subnet-3"
  }
}