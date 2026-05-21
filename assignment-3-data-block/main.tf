resource "aws_instance" "my_server" {

  ami           = data.aws_ami.amazon_linux.id

  instance_type = "t2.micro"

  tags = {
    Name = "DataBlockServer"
  }
}