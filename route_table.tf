#public
resource "aws_route_table" "pub_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "pub_route_table"
  }
}

resource "aws_route_table_association" "ass_pub1" {
  subnet_id      = aws_subnet.public-1.id
  route_table_id = aws_route_table.pub_route_table.id
}

resource "aws_route_table_association" "ass_pub2" {
  subnet_id      = aws_subnet.public-2.id
  route_table_id = aws_route_table.pub_route_table.id
}

resource "aws_route_table_association" "ass_pub3" {
  subnet_id      = aws_subnet.public-3.id
  route_table_id = aws_route_table.pub_route_table.id
}

#private
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway.id
} 
}
  resource "aws_route_table_association" "ass_pr1" {
  subnet_id      = aws_subnet.private-1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "ass_pr2" {
  subnet_id      = aws_subnet.private-2.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "ass_pr3" {
  subnet_id      = aws_subnet.private-3.id
  route_table_id = aws_route_table.private_route_table.id
}


