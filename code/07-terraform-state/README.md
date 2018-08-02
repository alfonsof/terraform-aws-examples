# Terraform State example

This folder contains a state example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

This Terraform file use the S3 bucket created in the previous example (create-s3) to store the information about what infrastructure has been created.

This information is stored in the Terraform state file `terraform.tfstate`. This file contains a JSON format that records a mapping from the representation of the resources on AWS to Terrafom resources in the configuration files.

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