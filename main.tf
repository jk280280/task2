provider "aws" {
  region = var.region
}

# Fetch default VPC
data "aws_vpc" "default" {
  default = true
}

# Fetch subnets of the default VPC
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

module "eks" {
  source        = "./modules/eks"
  region        = var.region
 subnet_ids      = data.aws_subnets.default.ids
  cluster_name  = "test-eks-cluster"
  node_group_name = "my-node-group"
 }

