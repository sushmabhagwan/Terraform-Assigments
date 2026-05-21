terraform {
  backend "s3" {
    bucket = "sushma-devops-tf-state-20260520"
    key    = "dev/terraform.tfstate"
    region = "us-east-2"
  }
}