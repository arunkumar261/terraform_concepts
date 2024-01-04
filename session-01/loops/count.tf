resource "aws_instance" "aws_ec2" {
    count = length(var.instance_type)
  ami = var.ami_id
   instance_type = var.instance_type[count.index] == "mongodb" || var.instance_type[count.index] == "shipping"|| var.instance_type[count.index] == "mysql" ? "t3.small" : "t2.micro"
     
tags ={
    Name = var.instance_type[count.index]
}
}


resource "aws_route53_record" "aws_route" {
 count = length(var.instance_type)
  zone_id = var.zone_id
  name    = "${var.instance_type[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_type[count.index] == "web" ? aws_instance.aws_ec2[count.index].public_ip : aws_instance.aws_ec2[count.index].private_ip]
}