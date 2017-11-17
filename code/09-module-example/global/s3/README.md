# Terraform Remote State example

This folder contains an example of a Terraform file (https://www.terraform.io/) that create a S3 bucket that can be used for remote state storage.
This Terraform file deploys the creation a of a bucket in Amazon Web Services (AWS) using S3.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys

You may want to specify a name for your bucket in `vars.tf` using the `default` parameter:

```hcl
variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  default = "(YOUR_BUCKET_NAME)"
}
```

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