terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "module-example/stage/data-stores/mysql/terraform.tfstate"
    region = "eu-west-1"
 }
}
