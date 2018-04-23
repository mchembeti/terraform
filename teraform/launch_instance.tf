provider "aws" {
         access_key = "AKIAJZMJTB4E4N"
         secret_key = "wF2ghF+FTVV"
         region     = "us-west-2"
}
resource "aws_instance" "example" {
         ami = "ami-a523b4dd"
         instance_type = "t2.micro"
         key_name = "zoz"
         security_groups= ["launch-wizard-19"]
         tags {
                Name = "terraform-instance"

    }
}
