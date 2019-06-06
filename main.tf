terraform {
  required_version = ">= 0.11.13"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jray-demo-ec2" {
  ami           		 = "ami-b374d5a5"
  instance_type          = "t2.small"
  vpc_security_group_ids = ["${aws_security_group.jray-demo-sg.id}"]

  tags {
    Name = "TFE-VCS-example"
    owner = "jray@hashicorp.com"
    ttl = "2"
  }
}

resource "aws_security_group" "jray-demo-sg" {
    name = "jray-demo-sg"
    description = "jray 22&8080 inbound ANY outbound"
   
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["172.16.0.0/16"]
    }
    
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["172.16.0.0/16"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}