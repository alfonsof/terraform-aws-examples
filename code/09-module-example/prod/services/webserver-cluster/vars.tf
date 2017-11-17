variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  default     =  "terraform-state-afb"
}

variable "db_remote_state_key" {
  description = "The path for database's remote state in S3"
  default     = "module-example/prod/data-stores/mysql/terraform.tfstate"
}
