resource "aws_instance" "aws_id" {
  ami = data.aws_ami.dynamic_ami_id.id
  instance_type = "t2.small"

  tags ={
    Name = "data-source"
  }
}