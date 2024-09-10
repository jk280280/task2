
output "cluster_name" {
  value = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "cluster_certificate_authority_data" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}

output "node_group_name" {
  value = aws_eks_node_group.this.node_group_name
}


output "kubeconfig" {
  value = aws_eks_cluster.eks.endpoint
}

output "eks_role_arn" {
  value = aws_iam_role.eks.arn
}

