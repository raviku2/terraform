resource "aws_route" "private_route_out" {
  route_table_id            = aws_route_table.private_route.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.gw.id
}

