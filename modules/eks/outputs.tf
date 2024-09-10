output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "kubeconfig" {
  value = aws_eks_cluster.eks.endpoint
}

output "eks_role_arn" {
  value = aws_iam_role.eks.arn
}

