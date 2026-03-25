provider "aws" {
  region = "ap-southeast-1"
  access_key = " "
  secret_key = " "
  }



resource "aws_instance" "vm1" {
  ami           = "ami-0be9cb9f67c8dabd6"
  instance_type = "t3.micro"
  key_name      = "tf-key"

  tags = {
    Name = "tf-server"
  }

}
