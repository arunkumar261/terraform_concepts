
variable "ec2_list" {
  type = map(object({
    ami_id          = string
    instance_type = map(string)
    tags          = string
  }))
}