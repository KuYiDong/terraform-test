#모듈 안에서 외부에서 받은 값을 사용하려면 '이런 변수가 필요해요!' 하고 선언해줘야 해
resource "aws_subnet" "public_a" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.1.0/24"
    availability_zone = "${var.aws_region}a"

    tags = {
      Name = "public_subnet_a"
    }
  
}

resource "aws_subnet" "public_c" {
    vpc_id = var.vpc_id
    cidr_block = "10.0.2.0/24"
    availability_zone = "${var.aws_region}c"

    tags = {
      Name = "public_subnet_c"
    }
  
}
