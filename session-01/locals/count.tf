resource "aws_instance" "aws_ec2" {
    count = length(var.instance_type)
  ami = var.ami_id
   instance_type = local.instance_type
     
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
  records = [local.ip_records]
}