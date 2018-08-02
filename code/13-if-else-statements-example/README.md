# Terraform simple If-Else-Statement example

This folder contains the simple If-Else-Statement example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

It shows how do a simple If-Else-Statement in Terraform.

This Terraform file create 3 IAM users, create an IAM policy and attach the IAM policy to the IAM users.

We use the meta-paramenter "count" and two interpolation functions:

* "${element(LIST, INDEX)}"
* "${length(LIST)}"

We use "give_neo_cloudwatch_full_access" variable in order to give one of the users, neo, access to CloudWatch:

* "give_neo_cloudwatch_full_access" = 0 -> "cloudwatch_read_only"
* "give_neo_cloudwatch_full_access" = 1 -> "cloudwatch_full_access"

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