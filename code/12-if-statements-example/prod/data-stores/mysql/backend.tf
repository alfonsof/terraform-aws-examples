terraform {
  backend "s3" {
    bucket = "terraform-state-afb"
    key    = "if-statements-example/prod/data-stores/mysql/terraform.tfstate"
    region = "eu-west-1"
 }
}
