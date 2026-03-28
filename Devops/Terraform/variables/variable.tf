variable "ami_id" {
  type    = string
  default = "ami-0be9cb9f67c8dabd6"
}

variable "ins_type" {
  type    = string
  default = "t3.micro"
}

variable "key_pair" {
  type    = string
  default = "id_rsa"
}

variable "tags" {
  type = map(string)
  default = {
    Name = "web"
  }
}
