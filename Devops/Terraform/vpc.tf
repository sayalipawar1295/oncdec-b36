resource "aws_vpc" "vnet" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "tf-vpc"
  }
}

resource "aws_subnet" "pub" {
  vpc_id                  = aws_vpc.vnet.id
  cidr_block              = "192.168.0.0/22"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "tf-subnet-pub"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "tf-igw"
  }
}

resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "rt-public"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

}

resource "aws_route_table_association" "rta-1" {
  subnet_id      = aws_subnet.pub.id
  route_table_id = aws_route_table.rt-1.id
}



# create security group
resource "aws_security_group" "firewall" {
  vpc_id = aws_vpc.vnet.id
  name   = "tf-vpc-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "vm" {
  ami                    = "ami-0be9cb9f67c8dabd6"
  instance_type          = "t3.micro"
  key_name               = "id_rsa"
  user_data              = <<-EOF
                #!/bin/bash
                sudo -i
                yum update -y
                yum install httpd -y
                systemctl start httpd
                systemctl enable httpd
                echo "Hello World from Terraform" > /var/www/html/index.html
                EOF
  subnet_id              = aws_subnet.pub.id
  vpc_security_group_ids = [aws_security_group.firewall.id]
  tags = {
    Name = "webserver"
  }
}
