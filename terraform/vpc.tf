resource "aws_default_vpc" "default_vpc" {
  name = default-vpc
}

resource "aws_default_subnet" "default_subnet_a" {
  name = default-subneta
  availability_zone = "us-east-2a"
}

resource "aws_default_subnet" "default_subnet_b" {
  name= default-subnetb
  availability_zone = "us-east-2b"
}



