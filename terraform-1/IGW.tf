resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.customvpc.id

  tags = {
    Name = "IGW"
  }
}