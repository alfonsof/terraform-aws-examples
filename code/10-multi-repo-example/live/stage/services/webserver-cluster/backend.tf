terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "multi-repo-example/live/stage/services/webserver-cluster/terraform.tfstate"
    region = "eu-west-1"
 }
}
