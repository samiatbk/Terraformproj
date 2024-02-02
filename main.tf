
provider "aws" {
    region = var.region
  
}
resource "aws_instance" "Fproj" {
    ami = var.ami_value  
    instance_type = var.instance_type  
  
}
resource "aws_s3_bucket" "fproj" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}