resource "aws_instance" "db_server" {
  ami           = "ami-0451f2687182e0411"
  instance_type = "t2.micro"
  key_name      = "sample"
  count         = "1"
    tags = {
   Name= "database"
}

  subnet_id     = aws_subnet.private_subnet.id
  # Add other necessary configurations
}

