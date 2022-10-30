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
provider "aws" {
	region = "us-west-1"
	profile = "default"
	alias = "aws-west-1"
}
