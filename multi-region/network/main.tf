variable "cidr" {}

resource "aws_vpc" "this" {
  cidr_block = "${var.cidr}"

  tags {
    Name = "${format("%s-vpc-2", "specified")}"
  }
}
