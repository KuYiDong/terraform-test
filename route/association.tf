# public subnet map 생성
locals {
  public_subnet_map = {
    for idx, id in var.public_subnet_ids :
    "public-${idx}" => id
  }

  private_subnet_map = {
    for idx, id in var.private_subnet_ids :
    "private-${idx}" => id
  }
}

resource "aws_route_table_association" "public-ass" {
  for_each       = local.public_subnet_map
  subnet_id      = each.value
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private-ass" {
  for_each       = local.private_subnet_map
  subnet_id      = each.value
  route_table_id = aws_route_table.private.id
}
