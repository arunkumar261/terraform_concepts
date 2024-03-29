resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.robosho-all.id ]

  tags = {
    Name = var.tagName
  }
}


resource "aws_security_group" "robosho-all" {
  name        = var.sg-name
  description = var.sg-description
  # vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.inbound_from_port     # 0 means all ports
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.inbound_cidr_blocks
    # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop-all"
  }
}

