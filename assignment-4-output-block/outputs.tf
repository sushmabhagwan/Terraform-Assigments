output "instance_id" {
  value = aws_instance.output_server.id
}

output "public_ip" {
  value = aws_instance.output_server.public_ip
}

output "availability_zone" {
  value = aws_instance.output_server.availability_zone
}