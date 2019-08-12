provider "aws" {
	region = "us-east-2"
	profile = "default"
	shared_credentials_file = "~/.aws/credentials" 
}

resource "aws_instance" "Built-by-terraform" {
	ami 			= "ami-0d8f6eb4f641ef691"
	instance_type 		= "t2.micro"
#	vpc_security_groups_ids	= [
#		"sg-0e191ebae4de92d82",
#	]
	tags			= {
		Name		= "terraform-test"
	}
}
