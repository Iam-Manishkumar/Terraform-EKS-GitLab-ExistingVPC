output "endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "EKS Cluster" {
  description = "EKS"
  value       = aws_eks_cluster.eks.id
}

