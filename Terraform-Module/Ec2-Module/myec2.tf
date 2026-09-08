data "aws_ami" "myami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = [var.myami]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

resource "aws_instance" "myec2" {
  ami           = data.aws_ami.myami.id
  instance_type = var.instancetype

  tags = {
    Name = var.instancename
  }
}
