# Terraform Loops example

This folder contains the loops example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

It shows how do loops in Terraform.

This Terraform file create 3 IAM users, create an IAM policy and attach the IAM policy to the IAM users.

We use the meta-paramenter "count" and two interpolation functions:

* "${element(LIST, INDEX)}"
* "${length(LIST)}"

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