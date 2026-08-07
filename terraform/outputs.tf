############################################
# VPC
############################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

############################################
# Public Subnets
############################################

output "public_subnets" {
  description = "Public subnet IDs"

  value = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}

############################################
# Private Subnets
############################################

output "private_subnets" {
  description = "Private subnet IDs"

  value = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id
  ]
}

############################################
# EKS
############################################

output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "external_secrets_role_arn" {
  value = aws_iam_role.external_secrets.arn
}
