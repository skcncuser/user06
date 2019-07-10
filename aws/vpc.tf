resource "aws_vpc" "user06VPC" {
  cidr_block           = "106.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}
