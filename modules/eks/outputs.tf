
output "cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "cluster_certificate_authority_data" {
  value = aws_eks_cluster.eks.certificate_authority[0].data
}

output "node_group_name" {
  value = aws_eks_node_group.node.node_group_name
}


output "kubeconfig" {
  value = aws_eks_cluster.eks.endpoint
}

output "eks_role_arn" {
  value = aws_iam_role.eks.arn
}

