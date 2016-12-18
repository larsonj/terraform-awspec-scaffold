variable region {} 
variable bucket {}

provider "aws" {
   region = "us-east-1"
}

/***
data "terraform_remote_state" "foo" {
    backend = "s3"
    config {
		bucket = "${var.bucket}"
		key = "network/terraform.tfstate"
		region = "${var.region}"
		encrypt = true
    }
}
***/

resource "aws_s3_bucket" "terraform_state" {
   bucket = "${var.bucket}"
   force_destroy = true
   region = "${var.region}"

   versioning {
      enabled = true
   }
# todo: turn on prevent_destroy = true
  lifecycle {
    prevent_destroy = false
  }

}
