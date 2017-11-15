# Terraform Web Server with vars example

This folder contains a web server with vars example of a Terraform file (https://www.terraform.io/).
This Terraform file deploys a single web server in Amazon Web Services (AWS). The web server returns "Hello, World" for the URL `/` listening on port 8080, which is defined as a variable.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys

Validate the changes:

```
terraform plan
```

Deploy the changes:

```
terraform apply
```

Test the web server. When the `apply` command completes, it will output the public IP address of the web server.

```
curl http://(server_public_ip):8080/
```

Clean up the resources created when you have finished:

```
terraform destroy
```