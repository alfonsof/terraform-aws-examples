# Terraform Muti repo example

This folder contains a multi repo example of a Terraform file (https://www.terraform.io/).

It shows how to develop (not duplicating code) web server clusters in different environments using a module in another repo in order to use different version of the module in the environments.
The environments are:
* Staging (stage)
* Production (prod)

It uses in common for both environments:
* Terraform Remote State example: [live/global/s3](live/global/s3)
* Terraform Web Server Cluster module example in another repo: [https://github.com/alfonsof/terraform-examples-repo-aws](https://github.com/alfonsof/terraform-examples-repo-aws)

It uses for staging environment:
* Terraform MySQL on RDS example (staging environment): [live/stage/data-stores/mysql](live/stage/data-stores/mysql)
* Terraform Web Server Cluster example (staging environment): [live/stage/services/webserver-cluster](live/stage/services/webserver-cluster)

It uses for production environment:
* Terraform MySQL on RDS example (production environment): [live/prod/data-stores/mysql](live/prod/data-stores/mysql)
* Terraform Web Server Cluster example (production environment): [live/prod/services/webserver-cluster](live/prod/services/webserver-cluster)


## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys

Use Terraform Remote State example for creating the remote state bucket. See: [live/global/s3](live/global/s3)

Use Terraform module example (in another repo) for Web Server Cluster example in the staging environment and Web Server Cluster example in the production environment. See: [https://github.com/alfonsof/terraform-examples-repo-aws](https://github.com/alfonsof/terraform-examples-repo-aws)

Use Terraform MySQL on RDS example for creating a MySQL database in the staging environment. See: [live/stage/data-stores/mysql](live/stage/data-stores/mysql)

Use Terraform Web Server Cluster example (in another repo) for creating a web server cluster in the staging environment. See: [live/stage/services/webserver-cluster](live/stage/services/webserver-cluster)

Use Terraform MySQL on RDS example for creating a MySQL database in the production environment. See: [live/prod/data-stores/mysql](live/prod/data-stores/mysql)

Use Terraform Web Server Cluster example for creating a web server cluster in the production environment. See: [live/prod/services/webserver-cluster](live/prod/services/webserver-cluster)
