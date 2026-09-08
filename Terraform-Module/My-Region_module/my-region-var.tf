variable "instancetype" {
  default = "t2.micro"
}

variable "myami" {
  default = "aws-elasticbeanstalk-amzn*"
}

variable "instancename" {
  default = "Server"
}

variable "myregion" {}

variable "port" {
  default = "8080"
}
