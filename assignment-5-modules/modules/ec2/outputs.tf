output "instance_ids" {
  value = aws_instance.ubuntu_server[*].id
}