provider "aws" {
  region = var.myregion
}

data "aws_ami" "myami" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.myami]
  }
}

resource "aws_instance" "myec2" {
  ami           = data.aws_ami.myami.id
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
