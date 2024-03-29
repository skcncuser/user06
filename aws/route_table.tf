# public
resource "aws_route_table" "user06rt_public" {
  vpc_id = "${aws_vpc.user06VPC.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.user06igw.id}"
  }
}

resource "aws_route_table_association" "user06_public_1a" {
  subnet_id      = "${aws_subnet.public_1a.id}"
  route_table_id = "${aws_route_table.user06rt_public.id}"
}

resource "aws_route_table_association" "user06_public_1c" {
  subnet_id      = "${aws_subnet.public_1c.id}"
  route_table_id = "${aws_route_table.user06rt_public.id}"
}

