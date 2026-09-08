provider "aws" {
  region = var.myregion
}

resource "aws_instance" "myec2" {
  ami           = var.myami
  instance_type = var.instancetype

  tags = {
    Name = var.instancename
  }
}

resource "aws_security_group" "mysg" {
  name = "my-security-group"

  ingress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
