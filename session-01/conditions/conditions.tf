resource "aws_instance" "aws_ec2" {
  ami = var.ami_id
  instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro"
  
  tags = {
    Name = var.instance_name 
  }
}
