# Terraform Web Server Cluster module example

This folder contains a Web Server Cluster module example of a Terraform file (https://www.terraform.io/).
This Terraform file define a cluster of web servers module in Amazon Web Services (AWS) using EC2 and Auto Scaling, and a load balancer using ELB.
The cluster of web servers returns "Hello, World" for the URL `/`. The load balancer listens on port 80.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This code was written for Terraform 0.10.x.

## Using the code

Terraform modules are not meant to be deployed directly. Instead, you should be using them from other templates. See
[stage/services/webserver-cluster](../../../stage/services-webserver-cluster) and
[prod/services/webserver-cluster](../../../prod/services-webserver-cluster) for examples.