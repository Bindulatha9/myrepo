provider "aws" {
region = "ap-northeast-1"
access_key = "AKIAY2H7S4EHCEMVNCWI"
secret_key = "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"
}
resource "aws_security_group" "key" {
name = "mygroup"
 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 ingress {
    from_port = 0
    to_port   = 0
    protocol  = "ALL"
    cidr_blocks = ["0.0.0.0/0"]
 }

 egress {
    from_port   = 0
    to_port     = 0
    protocol    = "ALL"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "myinstance" {
ami = "ami-06ee4e2261a4dc5c3"
instance_type = "t2.micro"
security_groups = ["mygroup"]
tags = {
Name = "instance1"
}
}
