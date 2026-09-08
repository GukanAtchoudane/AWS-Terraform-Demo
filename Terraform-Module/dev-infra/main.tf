provider "aws" {
  region = "us-east-1"
}

module "ec2_Dev" {
    source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Ec2-Module"
    instancename = "Dev-Server"
    instancetype = "t2.micro"
}

module "ec2_Test" {
    source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//Ec2-Module"
    instancename = "Test-Server"
    instancetype = "t2.micro"
}


module "sg-dev" {
    source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//SG-Module"
    port = 8989
}

module "sg-test" {
    source = "git::https://github.com/GukanAtchoudane/AWS-Terraform-Demo.git//SG-Module"
    port = 7979
}
