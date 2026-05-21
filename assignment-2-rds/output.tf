output "rds_endpoint" {
  value = aws_db_instance.mysql_db.endpoint
}

output "rds_engine" {
  value = aws_db_instance.mysql_db.engine
}

output "rds_status" {
  value = aws_db_instance.mysql_db.status
}