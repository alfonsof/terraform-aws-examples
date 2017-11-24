terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "if-statements-example/prod/services/webserver-cluster/terraform.tfstate"
    region = "eu-west-1"
 }
}
