variable "ami" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}


variable "tagName" {
  type = string
  default = "ec2-instance"
}


variable "sg-name" {
  type = string
  default = "robosho-all"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound_from_port" {
  type = number
  default = 0
}

variable "inbound_cidr_blocks" {
  default = ["0.0.0.0/0"]
}