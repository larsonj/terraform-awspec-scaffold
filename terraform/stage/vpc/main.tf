
module "terraform_state" {
   source="../../modules/terraform_state"
   
   bucket = "${var.project-name}.terraform.vpc-${var.vpc-name}-${var.env}.state"
   region = "us-east-1"
   
}

module "vpc" {
   source = "github.com/terraform-community-modules/tf_aws_vpc"

   name = "${var.vpc-name}-${var.env}"

   cidr = "10.111.0.0/16"

   private_subnets = ["10.111.1.0/24", "10.111.2.0/24", "10.111.3.0/24"]
   public_subnets  = ["10.111.101.0/24", "10.111.102.0/24", "10.111.103.0/24"]

   #private_subnets = ["10.111.1.0/24"]
   #public_subnets  = ["10.111.101.0/24"]

   enable_nat_gateway = "false"

   azs = ["us-east-1b","us-east-1c","us-east-1d","us-east-1e"]
}

