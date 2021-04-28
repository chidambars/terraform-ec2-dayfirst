provider "aws"{
    region ="us-east-1"
}

variable "ami_id" {
  default = "ami-0742b4e673072066f"
  description = "AMI id for EC2 instance"
  type = string 
}


resource "aws_instance" "myec2" {
  #ami = "ami-0742b4e673072066f"
  ami= var.ami_id
  instance_type = "t2.micro"
  tags = {
    "Name" = "ChidambarEC2Instance"
  }
}