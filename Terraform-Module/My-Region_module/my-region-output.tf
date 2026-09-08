output "my-region" {
  value = {
    region = var.myregion
    ami = var.myami
    instance_type = var.instancetype
    instance_name = var.instancename
    port = var.port
  }
}
