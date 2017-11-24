provider "aws" {
  region = "eu-west-1"
}
 
module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  
  cluster_name           = "werservers-prod"
  db_remote_state_bucket = "${var.db_remote_state_bucket}"
  db_remote_state_key    = "${var.db_remote_state_key}"

  instance_type        = "t2.micro"
  min_size             = 2
  max_size             = 10
  enable_autoscaling   = true
  enable_new_user_data = false
}
