#Terraform Block
terraform {
	required_version = "~> 1.3.2"
	requirred_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 4.34.0"
		}
	}
}
#Provider Block
provider "aws" {
	region = "us-east-1"
	profile = "default"
}
provider "aws" {
	region = "us-east-2"
	profile = "default"
	alias = "aws-east-2"
}
#Terraform Backend Block
terraform {
	backend "s3" {
		bucket = "www.racherla.xyz"
		key = "MainState/terraform.tfstate"
		region = "us-east-1"
	}
}
#Resource Block -VPC
resource "aws_vpc" "VPC" {
	cidr_block = "10.1.0.0/16"
	tags = {
		Name = "VPC-${terraform.workspace}"
	}
}
resource "aws_vpc" "VPC-east-2" {
	cidr_block = "192.168.0.0/16"
	provider = aws.aws-east-2
	tags = {
		Name = "VPC-east-2-${terraform.workspace}"
	}
}
