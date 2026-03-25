# create security group

resource "aws_security_group" "firewall" {
  vpc_id = "vpc-051c1a41d636a55fc"    # change vpc id
  name   = "terraform-day2-sg"

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

# create ec2 instance
resource "aws_instance" "vm1" {
  ami                    = "ami-0be9cb9f67c8dabd6"    # change ami id 
  instance_type          = "t3.micro"
  key_name               = "tf-key"                   # change key pair
  vpc_security_group_ids = [aws_security_group.firewall.id]
  user_data              = <<-EOF
    #!/bin/bash
    sudo -i
    yum install httpd -y 
    systemctl start httpd 
    systemctl enable httpd 
    echo "welcome to terraform" > /var/www/html/index.html
    EOF

  tags = {
    Name = "webserver"
  }

}

