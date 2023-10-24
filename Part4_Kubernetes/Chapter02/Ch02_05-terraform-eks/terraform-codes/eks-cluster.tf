resource "aws_eks_cluster" "test-eks-cluster" {

  depends_on = [
    aws_iam_role_policy_attachment.terra-iam-policy-eks-cluster,
    aws_iam_role_policy_attachment.terra-iam-policy-eks-cluster-vpc,
  ]

  name     = var.cluster-name
  role_arn = aws_iam_role.terra-iam-role-eks-cluster.arn
  version = "1.21"

  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  vpc_config {
    security_group_ids = [aws_security_group.terra-sg-eks-cluster.id]
    subnet_ids         = ["subnet-04aac0f5ad33d385d","subnet-0e5968fbf35ea8dfb"]
    endpoint_public_access = true
  }


}