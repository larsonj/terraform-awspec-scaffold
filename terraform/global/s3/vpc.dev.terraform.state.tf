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
