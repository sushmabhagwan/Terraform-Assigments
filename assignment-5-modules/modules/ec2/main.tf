resource "aws_instance" "ubuntu_server" {

  count = 2

  ami = "ami-04b4f1a9cf54c11d0"

  instance_type = "t2.micro"

  subnet_id = var.subnet_id

  vpc_security_group_ids = [
    var.security_group_id
  ]

  tags = {
    Name = "UbuntuServer-${count.index + 1}"
  }
}