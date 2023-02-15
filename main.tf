# Update Provider
# AWS As my Provider
provider "aws" {
region = "us-west-1"
access_key = "abc"
secret_key = "xyz"
}

#Resource Definition
resource "aws_vpc" "ibm" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "IBM"
  }
}
