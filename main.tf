Resource Block
resource "aws_vpc" "Jenkins1-VPC" {
	cidr_block = "10.1.0.0/16"
	tags = {
		Name = "Jenkins1-VPC"
	}
}
resource "aws_vpc" "Jenkins2-VPC" {
	cidr_block = "192.168.0.0/16"
	provider = aws.aws-east-2
	tags = {
		Name = "Jenkins2-VPC"
	}
}
resource "aws_vpc" "Jenkins3-VPC" {
	cidr_block = "172.16.0.0/16"
	provider = aws.aws-west-1
	tags = {
		Name = "Jenkins3-VPC"
	}
}
