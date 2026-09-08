module "my-region" {
  source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Terraform-Module/My-Region_module?ref=main"

  myregion     = "us-east-1"
  instancetype = "t2.micro"
  instancename = "us-west-Server"
  port         = 7979
}
