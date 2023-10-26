resource "aws_security_group" "terra-sg-eks-cluster" {
  name        = "terra-sg-eks-cluster"
  description = "security_group for terra-eks-cluster"
  vpc_id      = aws_vpc.terra-vpc.id

  tags = {
    Name = "terra-sg-eks-cluster"
  }
}

resource "aws_security_group_rule" "terra-sg-eks-cluster-ingress" {

  security_group_id = aws_security_group.terra-sg-eks-cluster.id
  type              = "ingress"
  description       = "ingress security_group_rule for terra-eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "terra-sg-eks-cluster-egress" {

  security_group_id = aws_security_group.terra-sg-eks-cluster.id
  type              = "egress"
  description       = "egress security_group_rule for terra-eks-cluster"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

#######################  EKS PODs Security Group  ##############

resource "aws_security_group" "terra-sg-eks-pods" {
  name        = "terra-sg-eks-pods"
  description = "security_group for terra-eks-pods"
  vpc_id      = aws_vpc.terra-vpc.id

  tags = {
    Name = "terra-sg-eks-pods"
  }
}


resource "aws_security_group_rule" "terra-sg-eks-pods-ingress" {

  security_group_id = aws_security_group.terra-sg-eks-pods.id
  type              = "ingress"
  description       = "ingress security_group_rule for terra-eks-pods"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "terra-sg-eks-pods-egress" {

  security_group_id = aws_security_group.terra-sg-eks-pods.id
  type              = "egress"
  description       = "egress security_group_rule for terra-eks-pods"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

########### Bastion (EC2 Instance) Security Group ###########

resource "aws_security_group" "terra-sg-bastion" {

  name   = "terra-sg-bastion"
  vpc_id = aws_vpc.terra-vpc.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "ingress security_group_rule for bastion"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "egress security_group_rule for bastion"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  tags = {
    Name = "terra-sg-bastion"
  }
}
