resource "aws_subnet" "private_a" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.3.0/24"
    availability_zone = "${var.aws_region}a"

    tags = {
      Name = "private_subnet_a"
    }
  
}

resource "aws_subnet" "private_c" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.4.0/24"
    availability_zone = "${var.aws_region}c"

    tags = {
      Name = "private_subnet_c"
    }
  
}
