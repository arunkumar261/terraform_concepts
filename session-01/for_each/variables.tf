variable "zone_id" {
    type = string
  default = "Z10349302JNJNU58IXNQM"
}


variable "ami_id" {
  default = "ami-03265a0778a880afb"
}


variable "instance_names" {
    type = map
  default = {
    mongodb ="t3.small"
    mysql ="t3.small"
    shipping ="t3.small"
    web ="t2.micro"
    user ="t2.micro"
    cart ="t2.micro"
    redis ="t2.micro"
    rabbitmq ="t2.micro"
    payment ="t2.micro"
    dispatch ="t2.micro"
    catalohgue ="t2.micro"
  }
}

variable "domain_name" {
  default = "arundev.online"
}