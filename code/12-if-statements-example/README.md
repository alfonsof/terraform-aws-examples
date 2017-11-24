# Terraform If-Statements & If-Else-Statements example

This folder contains a If-Statements and If-Else-Statements example of a Terraform file (https://www.terraform.io/).

It shows how to use a:

1) simple If-Statement funcionality using an "enable_autoscaling" variable in the module in order to execute or not the resources:

* resource "aws_autoscaling_schedule" "scale_out_during_business_hours"
* resource "aws_autoscaling_schedule" "scale_in_at_night"

Defining the values of "enable_autoscaling" variable:

* true (= 1) in Production
* false (= 0) in Staging

2) more complicated If-Statement funcionality using the "instance_type" variable in the module in order to execute or not the resource:

* resource "aws_cloudwatch_metric_alarm" "low_cpu_credit_balance"

and using:

count = "${format("%.1s", var.instance_type) == "t" ? 1 : 0}"

where:

* true (= 1) if "var.instance_type" start with a letter "t" (e.g., t2.micro)
* false (= 0) if "var.instance_type" does not start with a letter  "t"

3) a more complicated If-Else-Statement funcionality using a "enable_new_user_data" variable in the module in order to a data script or another:

* if "enable_new_user_data" is true (staging environment) the execute "user_data_new.sh"
* if "enable_new_user_data" is false (production environment) the execute "user_data.sh"



Furthermore, it shows how to develop (not duplicating code) web server clusters in different environments using a module. The environments are:
* Staging (stage)
* Production (prod)

It uses in common for both environments:
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
