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
