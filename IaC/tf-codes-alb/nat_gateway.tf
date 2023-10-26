resource "aws_nat_gateway" "terra-nat-gateway" {

  depends_on = [
    aws_eip.terra-elastic-ip
  ]

  allocation_id     = aws_eip.terra-elastic-ip.id
  subnet_id         = aws_subnet.terra-public-subnet3.id
  connectivity_type = "public"

  tags = {
    Name        = "terra-nat-gateway"
  }

  tags_all = {
    Name        = "terra -nat-gateway"
  }

}
