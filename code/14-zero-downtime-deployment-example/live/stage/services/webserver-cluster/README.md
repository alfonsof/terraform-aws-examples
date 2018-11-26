# Terraform Web Server Cluster example (staging environment)

This folder contains a Web Server Cluster example of a Terraform file [Terraform](https://www.terraform.io/).

This Terraform file deploys a cluster of web servers on AWS (Amazon Web Services) using EC2 and Auto Scaling, and a load balancer using ELB.

The cluster of web servers returns "Hello, World" for the URL `/`. The load balancer listens on port 80.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
* It uses the Terraform AWS Provider that interacts with the many resources supported by AWS through its APIs.
* This code was written for Terraform 0.10.x.
* You must deploy the MySQL database in [data-stores/mysql](../../data-stores/mysql) BEFORE deploying the
  templates in this folder.
* This uses a Terraform module. See [modules/services/webserver-cluster](../../../../modules/services/webserver-cluster).

## Using the code

* Configure your AWS access keys.

* Initialize working directory.

  The first command that should be run after writing a new Terraform configuration is the `terraform init` command in order to initialize a working directory containing Terraform configuration files. It is safe to run this command multiple times.

  ```bash
  terraform init
  ```

* Configure Terraform backend.

  Modify the S3 bucket name, which is defined in the `bucket` attribute in `backend.tf` file.

  ```bash
  bucket = "<YOUR_BUCKET_NAME>"
  ```

* Configure the bucket used for the database's remote state storage.

  Modify the S3 bucket name which is defined in the `bucket` attribute in `vars.tf` file. Important! You must deploy the templates in [data-stores/mysql](../../data-stores/mysql) first:

  ```hcl
  variable "db_remote_state_bucket" {
    description = "The name of the S3 bucket used for the database's remote state storage"
    default     =  "<YOUR_BUCKET_NAME>"
  }
  ```

* Input variables than manage AMI and text the User Data script return.

  There are two input variables defined in `vars.tf` file in Module in order to manage AMI and text the User Data script return:

  ```hcl
  variable "ami" {
    description = "The AMI to run in the cluster"
    default     =  "ami-785db401"
  }

  variable "server_text" {
    description = "The text the web server should return"
    default     = "Hello, World"
  }
  ```

  This deploy configure both variables:

  ```hcl
  ami         = "ami-785db401"
  server_text = "New server text"
  ```

* Validate the changes.

  Run command:

  ```bash
  terraform plan
  ```

* Deploy the changes.

  Run command:

  ```bash
  terraform apply
  ```

* Test the cluster of web servers.

  Test the cluster of web servers. When the `apply` command completes, it will output the DNS name of the load balancer.

  ```bash
  curl http://<elb_dns_name>/
  ```

* Clean up the resources created.

  When you have finished, run command:

  ```bash
  terraform destroy
  ```