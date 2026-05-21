resource "aws_db_instance" "mysql_db" {

  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"

  identifier           = "terraform-mysql-db"

  username             = var.db_username
  password             = var.db_password

  publicly_accessible  = true
  skip_final_snapshot  = true
}