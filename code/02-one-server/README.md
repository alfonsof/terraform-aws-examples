# Terraform One Server example

This folder contains a one server example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

This Terraform file deploys a single server on AWS (Amazon Web Services) using EC2.

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

Clean up the resources created when you have finished:

```bash
terraform destroy
```