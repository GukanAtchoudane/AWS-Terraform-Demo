resource "aws_security_group" "mysg" {
  name = "my-security-group"

  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


output "security_group_id" {
  value = aws_security_group.mysg.id
}
