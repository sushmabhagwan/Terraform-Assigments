resource "aws_eks_cluster" "main_eks" {

  name = "terraform-eks-cluster"

  role_arn = "arn:aws:iam::590427571567:role/terraform-eks-role"

  vpc_config {

    subnet_ids = var.subnet_ids
  }
}