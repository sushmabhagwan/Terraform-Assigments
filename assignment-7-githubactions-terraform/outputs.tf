output "instance_id" {

  value = aws_instance.githubactions_server.id
}

output "public_ip" {

  value = aws_instance.githubactions_server.public_ip
}