# Terraform Module example

This folder contains a module example of a Terraform file (https://www.terraform.io/).

It shows how to manage two environments:
* Staging (stage)
* Production (prod)

It uses for common:
* Terraform Remote State example: [global/s3](global/s3)
* Terraform Web Server Cluster module example: [modules/services/webserver-cluster](modules/services/webserver-cluster)

It uses for staging environment:
* Terraform MySQL on RDS example (staging environment): [stage/data-stores/mysql](stage/data-stores/mysql)
* Terraform Web Server Cluster example (staging environment): [stage/services/webserver-cluster](stage/services/webserver-cluster)

It uses for production environment:
* Terraform MySQL on RDS example (production environment): [prod/data-stores/mysql](prod/data-stores/mysql)
* Terraform Web Server Cluster example (production environment): [prod/services/webserver-cluster](prod/services/webserver-cluster)


## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys

Use Terraform Remote State example for creating the remote state bucket. See: [global/s3](global/s3)

Use Terraform module example for Web Server Cluster example in the staging environment and Web Server Cluster example in the production environment. See: [modules/services/webserver-cluster](modules/services/webserver-cluster)

Use Terraform MySQL on RDS example for creating a MySQL database in the staging environment. See: [stage/data-stores/mysql](stage/data-stores/mysql)

Use Terraform Web Server Cluster example for creating a web server cluster in the staging environment. See: [stage/services/webserver-cluster](stage/services/webserver-cluster)

Use Terraform MySQL on RDS example for creating a MySQL database in the production environment. See: [prod/data-stores/mysql](prod/data-stores/mysql)

Use Terraform Web Server Cluster example for creating a web server cluster in the production environment. See: [prod/services/webserver-cluster](prod/services/webserver-cluster)
