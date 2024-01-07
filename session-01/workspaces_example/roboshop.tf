resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {  
    Name = "hello-workspace"
  }
}
