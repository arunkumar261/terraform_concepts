locals {

  instance_type = var.instance_type[count.index] == "mongodb" || var.instance_type[count.index] == "shipping"|| var.instance_type[count.index] == "mysql" ? "t3.small" : "t2.micro"
  ip_records = var.instance_type[count.index] == "web" ? aws_instance.aws_ec2[count.index].public_ip : aws_instance.aws_ec2[count.index].private_ip
}