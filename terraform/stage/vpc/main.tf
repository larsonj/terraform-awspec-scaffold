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
