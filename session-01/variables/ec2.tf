resource "aws_instance" "aws_ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.robosho-all.id]

   tags = var.tags
  
}


