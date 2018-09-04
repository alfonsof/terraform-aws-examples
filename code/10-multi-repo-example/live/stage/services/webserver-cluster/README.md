# Terraform Web Server Cluster example (staging environment)

This folder contains a Web Server Cluster example of a Terraform file (https://www.terraform.io/).
This Terraform file deploys a cluster of web servers in Amazon Web Services (AWS) using EC2 and Auto Scaling, and a load balancer using ELB.
The cluster of web servers returns "Hello, World" for the URL `/`. The load balancer listens on port 80.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).
* You must deploy the MySQL database in [data-stores/mysql](../../data-stores/mysql) BEFORE deploying the
  templates in this folder.
* This uses a Terraform module in another repo. See
[https://github.com/alfonsof/terraform-aws-repo-examples](https://github.com/alfonsof/terraform-aws-repo-examples).

This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys

In `vars.tf`, fill in the name of the S3 bucket and key where the remote state is stored for the MySQL database
(you must deploy the templates in [data-stores/mysql](../../data-stores/mysql) first):

```hcl
variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
}
```

Validate the changes:

```
terraform plan
```

Deploy the changes:

```
terraform apply
```

Test the cluster of web servers. When the `apply` command completes, it will output the DNS name of the load balancer.

```
curl http://(elb_dns_name)/
```

Clean up the resources created when you have finished:

```
terraform destroy
```