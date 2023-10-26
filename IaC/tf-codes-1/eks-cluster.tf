resource "aws_eks_cluster" "terra-eks-cluster" {

  depends_on = [
    aws_iam_role_policy_attachment.terra-iam-policy-eks-cluster,
    aws_iam_role_policy_attachment.terra-iam-policy-eks-cluster-vpc,
  ]

  name     = var.cluster-name
  role_arn = aws_iam_role.terra-iam-role-eks-cluster.arn
  version = "1.28"

  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  vpc_config {
    security_group_ids = [aws_security_group.terra-sg-eks-cluster.id]
    subnet_ids         = [aws_subnet.terra-public-subnet1.id, aws_subnet.terra-public-subnet3.id]
    endpoint_public_access = true
  }


}