
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "ddd"
  subnet_id = aws_subnet.public[count.index].id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  count = 2
  tags = {
    Name = "WebServer"
  }
}

resource "aws_instance" "db" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "ddd"
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]

  tags = {
    Name = "DB Server"
  }
}