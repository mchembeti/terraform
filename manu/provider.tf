provider "aws" {
    region = "us-west-2"
}
resource "aws_vpc" "main" {
   cidr_block  = "190.160.0.0/16"
   instance_tenancy = "default"

   tags {
    Name = "main"
    location = "Banglore"
  }
}

resource "aws_subnet" "subnet1"{
     vpc_id = "${aws_apc.main.id}
     cidr_block = "190.160.1.0/24"

  tags {
    Name = "Subnet1"
  }
}
