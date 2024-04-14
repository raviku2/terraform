resource "aws_instance" "app_server" {
  ami           ="ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = "sample"
  count         = "1"
  tags = {
   Name= "application"
}
  subnet_id     = aws_subnet.public_subnet.id

}

