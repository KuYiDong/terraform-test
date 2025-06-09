resource "aws_eip" "nat" {
    domain = "vpc"
}

resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.nat.id
    subnet_id = var.public_subnets[0]
    
    depends_on = [ aws_eip.nat ]
    
    tags = {
        Name = "nat_gateway"
    }
}

