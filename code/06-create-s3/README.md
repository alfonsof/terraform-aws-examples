# Terraform Create S3 example

This folder contains the create S3 example of a [Terraform](https://www.terraform.io/) file AWS (Amazon Web Services).

This Terraform file deploys the creation a of a bucket on AWS (Amazon Web Services) using S3.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services) account](http://aws.amazon.com/).
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