terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key = "file-layout-example/stage/services/webserver-cluster/terraform.tfstate"
    region = "eu-west-1"
 }
}
