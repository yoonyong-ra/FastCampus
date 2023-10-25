resource "aws_route_table" "terra-route-table-pub-sub1" {

  depends_on = [
    aws_vpc.terra-vpc,
    aws_internet_gateway.terra-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra-internet-gateway.id
  }

  tags = {
    Name = "terra-route-table-pub-sub1"
  }

  tags_all = {
    Name = "terra-route-table-pub-sub1"
  }

  vpc_id = aws_vpc.terra-vpc.id
}

resource "aws_route_table" "terra-route-table-pub-sub3" {

  depends_on = [
    aws_vpc.terra-vpc,
    aws_internet_gateway.terra-internet-gateway
  ]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra-internet-gateway.id
  }

  tags = {
    Name = "terra-route-table-pub-sub3"
  }

  tags_all = {
    Name = "terra-route-table-pub-sub3"
  }

  vpc_id = aws_vpc.terra-vpc.id
}
