# Terraform Web Server Cluster module example

This folder contains a Web Server Cluster module example of a Terraform file [Terraform](https://www.terraform.io/).

This Terraform file define a cluster of web servers module on AWS (Amazon Web Services) using EC2 and Auto Scaling, and a load balancer using ELB.

The cluster of web servers returns "Hello, World" for the URL `/`. The load balancer listens on port 80.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
* It uses the Terraform AWS Provider that interacts with the many resources supported by AWS through its APIs.
* This code was written for Terraform 0.10.x.

## Using the code

Terraform modules are not meant to be deployed directly. Instead, you should be using them from other templates. See [live/stage/services/webserver-cluster](../../../live/stage/services-webserver-cluster) and [live/prod/services/webserver-cluster](../../../live/prod/services-webserver-cluster) for examples.

* Input variables than manage AMI and text the User Data script return.

  There are two input variables defined in `vars.tf` file in this Module in order to manage AMI and text the User Data script return:

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

  These are used by the templates in [live/stage/services/webserver-cluster](../../../live/stage/services-webserver-cluster) and [live/prod/services/webserver-cluster](../../../live/prod/services-webserver-cluster).