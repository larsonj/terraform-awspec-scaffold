
module "terraform_state" {
   source="../../modules/terraform_state"
   
   bucket = "${var.project-name}.terraform.vpc-${var.vpc-name}.${var.env}.state"
   region = "us-east-1"
   
}

module "vpc" {
   source = "github.com/terraform-community-modules/tf_aws_vpc"

   name = "${var.vpc-name}"

   cidr = "10.0.0.0/16"
   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

   enable_nat_gateway = "false"

   #region = "us-east-1"

   azs = ["us-east-1b","us-east-1c","us-east-1d","us-east-1e"]
}
/*****
provider "aws" {
   region = ${var.aws_default_region.name}
}

resource "aws_vpc" "blurredimages.net" {
   cidr_block = "10.101.0.0/17"
   tags {
      Name = "vpc-blurredimages.net"
   }
}

resource "aws_internet_gateway" {
   vpc_id = "${aws_vpc.blurredimages.net.id}"
}
*****/
