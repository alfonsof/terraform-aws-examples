provider "aws" {
  region = "eu-west-1"
}
 
resource "aws_s3_bucket" "terraform_state" {
  bucket		  = "terraform-state-afb"
  
  versioning {
    enabled = true
  }  
  
  lifecycle {
    prevent_destroy = true
  }
}
