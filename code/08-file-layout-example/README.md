# Terraform File Layout example

This folder contains a File Layout example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

It uses:

* Terraform Remote State example: [global/s3](global/s3)
* Terraform MySQL on RDS example: [stage/data-stores/mysql](stage/data-stores/mysql)
* Terraform Web Server Cluster example: [stage/services/webserver-cluster](stage/services/webserver-cluster)


## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services) account](http://aws.amazon.com/).
* This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys.

Use Terraform Remote State example for creating the remote state bucket. See: [global/s3](global/s3)

Use Terraform MySQL on RDS example for creating a MySQL database. See: [stage/data-stores/mysql](stage/data-stores/mysql)

Use Terraform Web Server Cluster example for creating a web server cluster. See: [stage/services/webserver-cluster](stage/services/webserver-cluster)
