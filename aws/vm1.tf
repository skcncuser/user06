resource "aws_instance" "user06_vm1" {
  ami               = "${var.amazon_linux}"
  availability_zone = "ap-northeast-1a"
  instance_type     = "t2.micro"
  key_name          = "${var.user06-keyname}"

  vpc_security_group_ids = [
    "${aws_default_security_group.user06_default.id}"
  ]

  subnet_id                   = "${aws_subnet.public_1a.id}"
  associate_public_ip_address = true
}

