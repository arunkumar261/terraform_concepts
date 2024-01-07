# module "ec2" {
#   source = "C:/DevOpswithAWS/repos/terraform/session-01/workspaces_by_abhishek/modules/ec2"
#   for_each = var.ec2_list
#   ami = each.value.ami_id
#   instance_type = each.value.instance_type
#   tags = each.value.tags
# }

module "ec2" {
 source = "C:/DevOpswithAWS/repos/terraform/session-01/workspaces_by_abhishek/modules/ec2"
 for_each = var.ec2_list
 ami_id = each.value.ami_id
 instance_type = each.value.instance_type
  tags = each.value.tags

}