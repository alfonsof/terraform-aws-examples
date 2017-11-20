terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "multi-repo-example/live/stage/data-stores/mysql/terraform.tfstate"
    region = "eu-west-1"
 }
}
