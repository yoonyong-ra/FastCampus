resource "aws_eks_node_group" "terra-eks-nodegroup" {
  cluster_name    = aws_eks_cluster.terra-eks-cluster.name
  node_group_name = "terra-eks-nodegroup"
  node_role_arn   = aws_iam_role.terra-iam-role-eks-nodegroup.arn
  subnet_ids      = ["subnet-04aac0f5ad33d385d","subnet-0e5968fbf35ea8dfb"]
  instance_types = ["t3a.medium"]
  disk_size = 20

  labels = {
    "role" = "eks-nodegroup"
  }

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 3
  }

  depends_on = [
    aws_iam_role_policy_attachment.terra-iam-policy-eks-nodegroup,
    aws_iam_role_policy_attachment.terra-iam-policy-eks-nodegroup-cni,
    aws_iam_role_policy_attachment.terra-iam-policy-eks-nodegroup-ecr,
  ]

  tags = {
    "Name" = "${aws_eks_cluster.terra-eks-cluster.name}-worker-node"
  }
}
