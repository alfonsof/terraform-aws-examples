# Terraform Loops example

This folder contains the loops example of a Terraform file (https://www.terraform.io/). It shows how loops work in Terraform.

This Terraform file create 3 IAM users, create an IAM policy and attach the IAM policy to the IAM users.

We use the meta-paramenter "count" and two interpolation functions:

* "${element(LIST, INDEX)}"
* "${length(LIST)}"

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

Clean up the resources created when you have finished:

```
terraform destroy
```