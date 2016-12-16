variable region {} 
variable bucket {}

provider "aws" {
   region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.bucket}"

  versioning {
    enabled = true
  }

  lifecycle {
    #prevent_destroy = true
  }
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
