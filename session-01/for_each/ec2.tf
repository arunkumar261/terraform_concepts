resource "aws_instance" "aws_ec2" {
 for_each = var.instance_names
    ami = var.ami_id
    instance_type = each.value
  
  tags= {
    Name = each.key
  }
}


resource "aws_route53_record" "route_53" {
    for_each = aws_instance.aws_ec2
    zone_id = var.zone_id
    name = "${each.key}.${var.domain_name}"
    type = "A"
    ttl ="1"
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}