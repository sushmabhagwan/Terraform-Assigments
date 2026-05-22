output "ecr_repository_url" {
  value = module.ecr.repository_url
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}