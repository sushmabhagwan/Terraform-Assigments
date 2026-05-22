resource "aws_s3_bucket" "imported_bucket" {

  bucket = "sushma-import-demo-bucket-2026"

  tags = {

    Name = "ImportedBucket"

    Environment = "Dev"

    Owner = "Sushma"
  }
}