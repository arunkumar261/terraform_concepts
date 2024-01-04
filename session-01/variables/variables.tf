variable "ami_id" {
  type = string
  default ="ami-03265a0778a880afb"
}


variable "instance_type" {
  type = string
  default ="t2.micro"
}


variable "tags" {
  type = map 
  default = {
    Name = "First_terraform"
    Project= "Roboshop"
    Enviroment = "dev"
    Component = "web"
    Terraform="true"
  }
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