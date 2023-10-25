resource "aws_route_table_association" "terra-route-association-pub-sub1" {
  route_table_id = aws_route_table.terra-route-table-pub-sub1.id
  subnet_id      = aws_subnet.terra-public-subnet1.id
}

resource "aws_route_table_association" "terra-route-association-pub-sub3" {
  route_table_id = aws_route_table.terra-route-table-pub-sub3.id
  subnet_id      = aws_subnet.terra-public-subnet3.id
}