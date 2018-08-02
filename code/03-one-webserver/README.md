# Terraform Web Server example

This folder contains a web server example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

This Terraform file deploys a single web server on AWS (Amazon Web Services). The web server returns "Hello, World" for the URL `/` listening on port 8080.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
* This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys.

Validate the changes:

```bash
terraform plan
```

Deploy the changes:

```bash
terraform apply
```

Test the web server. When the `apply` command completes, it will output the public IP address of the web server.

```bash
curl http://(server_public_ip):8080/
```

Clean up the resources created when you have finished:

```bash
terraform destroy
```