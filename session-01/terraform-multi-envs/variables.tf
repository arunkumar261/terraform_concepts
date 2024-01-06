variable "instance_names" {
  type = map
  default = {
    # mongodb ="t3.small"
    # mysql ="t3.small"
    # shipping ="t3.small"
    # web ="t3.small"
    # user ="t3.small"
    # cart ="t3.small"
    # redis ="t3.small"
    # rabbitmq ="t3.small"
    # payment ="t3.small"
    # dispatch ="t3.small"
    # catalohgue ="t3.small"
  }
}


variable "zone_id" {
    type = string
  default = "Z10349302JNJNU58IXNQM"
}



variable "domain_name" {
  default = "arundev.online"
}