provider "aws" {
region="ap-south-1"
}
module "my_assignment" {
source           ="/home/swatiuniyal/terraform-repo/modules/vpc"
vpc_cidr         ="172.31.0.0/16"

vpc_id           =module.my_assignment.vpc_id
subnet_cidr      ="172.31.0.0/24"
}

module "my_ec2" {
source           ="/home/swatiuniyal/terraform-repo/modules/ec2"
ec2_count        ="1"
ami_id           ="ami-0d758c1134823146a"
instance_type    ="c5a.large"
subnet_id        =module.my_assignment.subnet_id
sg_id            =module.my_security_group.sg_id
}
module "my_security_group"{
source           ="/home/swatiuniyal/terraform-repo/modules/sg"
}
