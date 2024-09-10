variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}


variable "subnet_ids" {
  description = "The VPC subnets to deploy the EKS cluster into"
  type        = list(string)
}

