# Terraform Create S3 example

This folder contains the create S3 example of a Terraform file (https://www.terraform.io/).
This Terraform file deploys the creation a of a bucket in Amazon Web Services (AWS) using S3.

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