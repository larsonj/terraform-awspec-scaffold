#
# AWS Variables
#
# TODO: create VPC through terraform and subsequent script to populate TF_VAR's
variable "vpc_id" {}

variable "vpc_cidr" {
    description = "CIDR for VPC"
    default = "10.22.0.0/16"
}
variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
    default = "10.22.1.0/24"
}
variable "az_list" {
  description = "Run the EC2 Instances across these Availability Zones"
  type = "list"
  default = ["us-east-1c", "us-east-1d", "us-east-1e"]
}
variable "az_list_count" { # used to spread vm nodes across az's; must = number of az in az-list variable
   default = 2
}
# TODO: script to retrieve proper subnets from AWS-CLI and update env TF_VAR's
variable "public_subnet_list" {
  description = "Launch instances across these subnetss"
  type = "list"
  default = ["sn-pub1", "sn-pub2", "sn-pub3"] # all should reside in the az's from az-list; MUST UPDATE subnet_list_count
}
variable "priv_sn_list_count" { # used to spread vm nodes across az's; must = number of az in az-list variable
   default = 2
}
variable "private_subnet_list" {
  description = "Launch instances across these subnetss"
  type = "list"
  default = ["sn-priv1", "sn-priv2", "sn-priv3"] # all should reside in the az's from az-list; MUST UPDATE subnet_list_count
}
variable "pub_sn_list_count" { # used to spread vm nodes across az's; must = number of az in az-list variable
   default = 2
}

