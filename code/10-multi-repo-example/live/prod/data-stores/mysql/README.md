# Terraform MySQL on RDS example (production environment)

This folder contains a MySQL on RDS example of a Terraform file (https://www.terraform.io/).
This Terraform file deploys a MySQL database using RDS in Amazon Web Services (AWS)

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys

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