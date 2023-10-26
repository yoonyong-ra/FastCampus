resource "aws_subnet" "terra-public-subnet1" {

  depends_on = [
    aws_vpc.terra-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "terra-public-subnet1"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "terra-public-subnet1"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.terra-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "terra-public-subnet3" {

  depends_on = [
    aws_vpc.terra-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "terra-public-subnet3"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "terra-public-subnet3"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.terra-vpc.id
  availability_zone = "ap-northeast-2c"
}

##################################

resource "aws_subnet" "terra-public-subnet-eks-pods-a" {

  depends_on = [
    aws_vpc.terra-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "100.64.0.0/19"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "terra-public-subnet-eks-pods-a"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "terra-public-subnet-eks-pods-a"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.terra-vpc.id
  availability_zone = "ap-northeast-2a"
}

resource "aws_subnet" "terra-public-subnet-eks-pods-c" {

  depends_on = [
    aws_vpc.terra-vpc
  ]

  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "100.64.32.0/19"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name                                     = "terra-public-subnet-eks-pods-c"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  tags_all = {
    Name                                     = "terra-public-subnet-eks-pods-c"
    "kubernetes.io/cluster/terra-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                 = 1
  }

  vpc_id = aws_vpc.terra-vpc.id
  availability_zone = "ap-northeast-2c"
}

