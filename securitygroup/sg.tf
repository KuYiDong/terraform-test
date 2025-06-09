resource "aws_security_group" "bastion_sg" {
    name = "bastion_sg"
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [aws_security_group.id]
    }
}

resource "aws_security_group" "Web_sg" {
    name = "Web"
    vpc_id = var.vpc_id

    ingress = {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = [aws_security_group.bastion_sg.id]

    }

  
}

