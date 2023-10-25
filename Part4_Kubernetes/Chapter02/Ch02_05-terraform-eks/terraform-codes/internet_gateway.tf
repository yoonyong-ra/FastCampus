resource "aws_internet_gateway" "terra-internet-gateway" {

  depends_on = [
    aws_vpc.terra-vpc
  ]

  vpc_id = aws_vpc.terra-vpc.id
}