provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "blurredimages.terraform.vpc.dev.state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
output "s3_bucket_arn" {
   value = "${aws_s3_bucket.terraform_state.arn}"
}
output "s3_region" {
   value = "${aws_s3_bucket.terraform_state.region}"
}
output "s3_versioning" {
   value = "${aws_s3_bucket.terraform_state.versioning.0.enabled}"
}
