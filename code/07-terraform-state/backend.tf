terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key = "terraform-state/terraform.tfstate"
    region = "eu-west-1"
 }
}
