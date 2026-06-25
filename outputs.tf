output "sg_ids" {
    value = aws_security_group.Roboshop-sg[*].id
}