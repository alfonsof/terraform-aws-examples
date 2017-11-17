terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "module-example/stage/services/webserver-cluster/terraform.tfstate"
    region = "eu-west-1"
 }
}
