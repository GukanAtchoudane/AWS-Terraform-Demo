module "my-region" {
    source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//My-Region_module"
    myregion = "us-west-2"
    instancetype = "t2.micro"
    instancename = "us-west-Server"
    port = "7979"
}
