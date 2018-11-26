# Terraform Remote State example

This folder contains an example of a Terraform file [Terraform](https://www.terraform.io/) that create a S3 bucket that can be used for remote state storage.

This Terraform file deploys the creation a of a bucket on AWS (Amazon Web Services) using S3.

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
* It uses the Terraform AWS Provider that interacts with the many resources supported by AWS through its APIs.
* This code was written for Terraform 0.10.x.

## Using the code

* Configure your AWS access keys.

* Initialize working directory.

  The first command that should be run after writing a new Terraform configuration is the `terraform init` command in order to initialize a working directory containing Terraform configuration files. It is safe to run this command multiple times.

  ```bash
  terraform init
  ```

* Modify configuration.

  You must modify the S3 bucket name, which is defined as an input variable `bucket_name` in `vars.tf` file.

  You can modify the S3 bucket name in several ways:

  * Loading variables from command line flags.

    Run Terraform commands in this way:

    ```bash
    terraform plan -var 'bucket_name=<YOUR_BUCKET_NAME>'
    ```

    ```bash
    terraform apply -var 'bucket_name=<YOUR_BUCKET_NAME>'
    ```

  * Loading variables from a file.

    When Terraform runs it will look for a file called `terraform.tfvars`. You can populate this file with variable values that will be loaded when Terraform runs. An example for the content of the `terraform.tfvars` file:

    ```bash
    bucket_name = "<YOUR_BUCKET_NAME>"
    ```

  * Loading variables from environment variables.

    Terraform will also parse any environment variables that are prefixed with `TF_VAR`. You can create an environment variable `TF_VAR_bucket_name`:

    ```bash
    TF_VAR_bucket_name=<YOUR_BUCKET_NAME>
    ```

  * Variable defaults.

    Change the value of the `default` attribute of `bucket_name` input variable in `vars.tf` file.

    ```hcl
    variable "bucket_name" {
      description = "The name of the S3 bucket. Must be globally unique."
      default = "<YOUR_BUCKET_NAME>"
    }
    ```

* Validate the changes.

  Run command:

  ```bash
  terraform plan
  ```

* Deploy the changes.

  Run command:

  ```bash
  terraform apply
  ```

* Clean up the resources created.

  When you have finished, run command:

  ```bash
  terraform destroy
  ```