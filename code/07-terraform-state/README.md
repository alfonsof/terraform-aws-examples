# Terraform State example

This folder contains a state example of a Terraform file (https://www.terraform.io/).
This Terraform file use the S3 bucket created in the previous example (create-s3) to store the information about what infrastructure has been created.
This information is stored in the Terraform state file `terraform.tfstate`. This file contains a JSON format that records a mapping from the representation of the resources in AWS to Terrafom resources in the configuration files.

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