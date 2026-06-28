resource "aws_security_group" "Roboshop-sg" {
  count = length(var.instances)
  name        = "${var.instances[count.index]}-${var.project}-${var.environment}"
  description = "Allowing traffic for ${var.instances[count.index]} for ${var.project} in ${var.environment}"
  vpc_id      = "${local.vpc_id}"

#adding comment again
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = merge (
    local.common_tags,{
    Name = "${var.instances[count.index]}-${local.common_name}",
    component = "${var.instances[count.index]}"
    }
  )
}
