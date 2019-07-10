resource "aws_internet_gateway" "user06igw" {
  vpc_id = "${aws_vpc.user06VPC.id}"
}
