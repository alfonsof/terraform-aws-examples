# Input variable: server port
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = "8080"
}

# Input variable: Cluster name
variable "cluster_name" {
  description = "The name to use for all the cluster resources"
}

# Input variable: DB remote state bucket name
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
}

# Input variable: DB remote state bucket key
variable "db_remote_state_key" {
  description = "The path for database's remote state in S3"
}

# Input variable: Instance type
variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
}

# Input variable: Instance min size
variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
}

# Input variable: Instance max size
variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
}

# Input variable: Enable Autoscaling
variable "enable_autoscaling" {
  description = "If set to true, enable autoscaling"
}

# Input variable: AMI
variable "ami" {
  description = "The AMI to run in the cluster"
  default     =  "ami-785db401"
}

# Input variable: Web server text
variable "server_text" {
  description = "The text the web server should return"
  default     = "Hello, World"
}
