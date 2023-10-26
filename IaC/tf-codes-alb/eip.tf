resource "aws_eip" "terra-elastic-ip" {
  network_border_group = "ap-northeast-2"
  public_ipv4_pool     = "amazon"

  tags = {
    Name        = "terra-elastic-ip"
  }

  tags_all = {
    Name        = "terra-elastic-ip"
  }

#  vpc = true
}
