resource "aws_iam_instance_profile" "terra-ec2-instance-profile" {
  name = "terra-ec2-instance-profile"
  path = "/"
  role = "terra-iam-role-ec2-instance-bastion"
}
