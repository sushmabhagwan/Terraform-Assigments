output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}

output "instance_public_ip" {
  value = aws_instance.my_server.public_ip
}