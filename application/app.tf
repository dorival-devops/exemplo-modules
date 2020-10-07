resource "aws_vpc" "jlearning" {
  cidr_block = "11.0.0.0/16"
}

 #   resource "aws_internet_gateway" "jlgw" {
 #   vpc_id = "${aws_vpc.jlearning.id}"
#
 #   tags = {
 #       Name = "jlearning"
 #   }
 #   }

resource "aws_subnet" "main" {
  vpc_id     = "jlearning"
  cidr_block = "11.0.1.0/24"

  tags = {
    Name = "jlearning"
  }
}
