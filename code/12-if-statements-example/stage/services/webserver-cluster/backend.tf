terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "if-statements-example/stage/services/webserver-cluster/terraform.tfstate"
    region = "eu-west-1"
 }
}
