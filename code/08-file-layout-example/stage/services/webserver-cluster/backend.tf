# Define Terraform backend using a S3 bucket for storing the Terraform state
terraform {
  backend "s3" {
    bucket  = "terraform-state-my-bucket"
    key     = "file-layout-example/stage/services/webserver-cluster/terraform.tfstate"
    region  = "eu-west-1"
  }
}
