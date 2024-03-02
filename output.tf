output "endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "EKSCluster" {
  description = "EKS"
  value       = aws_eks_cluster.eks.id
}

