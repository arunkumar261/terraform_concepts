variable "ami_id" {
  type = string
  default ="ami-03265a0778a880afb"
}


variable "instance_type" {
  type = list
  default = ["mongodb","catalogue","redis","web","user", "cart","rabbitmq","mysql","shipping","payment","dispatch"]
}

variable "zone_id" {
  default = "Z10349302JNJNU58IXNQM"
}

variable "domain_name" {
  default = "arundev.online"
}