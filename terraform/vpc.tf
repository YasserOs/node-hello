resource "aws_default_vpc" "default_vpc" {
}

resource "aws_default_subnet" "default_subnet_a" {
  
  availability_zone = "us-east-2a"
}

resource "aws_default_subnet" "default_subnet_b" {
  
  availability_zone = "us-east-2b"
}



resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.us-east-2.s3"
}

resource "aws_vpc_endpoint" "ecr" {
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.us-east-2.ecr.api"
}

resource "aws_vpc_endpoint" "ecr2" {
  vpc_id       = aws_vpc.main.id
  service_name = "com.amazonaws.us-east-2.ecr.dkr"
}
