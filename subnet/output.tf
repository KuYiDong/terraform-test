output "public_subnet_ids" {
    value = [aws_subnet.public_a.id, aws_subnet.public_c.id]
}

output "private_subnet_ids" {
    value = [aws_subnet.private_a.id, aws_subnet.private_c.id]
}

output "database_subnet_ids" {
    value = [aws_subnet.db_subnet_a.id, aws_subnet.db_subnet_c.id]
}