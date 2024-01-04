output "Total_information_of_this_instance" {
  value = aws_instance.aws_ec2             #give the total info of the instance created
}


#get particular data u want
output "public_ip" {
  value = aws_instance.aws_ec2.public_ip
}


output "private_ip" {
  value = aws_instance.aws_ec2.private_ip
}