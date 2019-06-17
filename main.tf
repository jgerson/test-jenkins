terraform {
  required_version = ">= 0.11.13"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo-jenkins" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.small"

  tags {
    Name  = "demo-jenkins"
    owner = "xyz@hashicorp.com"
    ttl   = "2"
  }
}