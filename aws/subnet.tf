resource "aws_subnet" "public_1a" {
  vpc_id            = "${aws_vpc.user06VPC.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "106.0.1.0/24"
}

resource "aws_subnet" "public_1c" {
  vpc_id            = "${aws_vpc.user06VPC.id}"
  availability_zone = "ap-northeast-1c"
  cidr_block        = "106.0.3.0/24"
}

