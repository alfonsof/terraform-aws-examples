# Input variable: server port
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = "8080"
}

# Input variable: DB remote state bucket name
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  default     =  "terraform-state-my-bucket"
}

# Input variable: DB remote state bucket key
variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  default     = "file-layout-example/stage/data-stores/mysql/terraform.tfstate"
}
