variable "instance_type" {

  default = {
  dev = "t2.micro"
  prod = "t2.medium"
  }
}
variable "ami" {
   default = "ami-03265a0778a880afb"
}

variable "zone_id" {
    type = string
  default = "Z10349302JNJNU58IXNQM"
}



variable "domain_name" {
  default = "arundev.online"
}