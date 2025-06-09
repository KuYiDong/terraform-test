
resource "aws_subnet" "db_subnet_a" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.5.0/24"
    availability_zone = "${var.aws_region}a"

    tags = {
      Name = "database_subnet_a"
    }
  
}

resource "aws_subnet" "db_subnet_c" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.6.0/24"
    availability_zone = "${var.aws_region}c"

    tags = {
      Name = "database_subnet_c"
    }
  
}

