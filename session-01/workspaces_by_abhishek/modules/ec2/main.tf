resource "aws_instance" "aws_ec2" {
  ami = var.ami_id
  instance_type = lookup(var.instance_type, terraform.workspace, "")

  tags = {
    Name = var.tags
   
  }
}