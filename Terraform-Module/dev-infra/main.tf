provider "aws" {
  region = "us-east-1"
}

module "ec2_Dev" {
  source       = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Terraform-Module/Ec2-Module?ref=main"
  instancename = "Dev-Server"
  instancetype = "t2.micro"
}

module "ec2_Test" {
  source       = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Terraform-Module/Ec2-Module?ref=main"
  instancename = "Test-Server"
  instancetype = "t2.micro"
}

module "sg-dev" {
  source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Terraform-Module/SG-Module?ref=main"
  port   = 8989
}

module "sg-test" {
  source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Terraform-Module/SG-Module?ref=main"
  port   = 7979
}
