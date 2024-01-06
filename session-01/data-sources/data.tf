data "aws_ami" "dynamic_ami_id" {
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}




data "aws_ami" "amazon_ami_id" {
  owners           = ["137112412989"]
  most_recent = true     #latest version
  filter {
    name   = "name"
    #values = ["amzn2-ami-kernel-5.10-hvm-2.0.20231218.0-x86_64-gp2"]
     values = ["amzn2-ami-kernel-5.10-hvm-*"]           #so each month there is a patch will be released so that will change after hvm - so * it will consider anything it will take latest like above  line 2.0.20231218.0-x86_64-gp2 data and something
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}