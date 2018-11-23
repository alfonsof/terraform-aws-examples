# Terraform Create S3 example

This folder contains the create S3 example of a [Terraform](https://www.terraform.io/) file AWS (Amazon Web Services).

This Terraform file deploys the creation of a S3 bucket on AWS (Amazon Web Services).

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
* It uses the Terraform AWS Provider that interacts with the many resources supported by AWS through its APIs.
* This code was written for Terraform 0.10.x.

## Using the code

* Configure your AWS access keys.

  **Important:** For security, it is strongly recommend that you use IAM users instead of the root account for AWS access.

  Setting your credentials for use by Terraform can be done in a number of ways, but here are the recommended approaches:

  * The default credentials file
  
    Set credentials in the AWS credentials profile file on your local system, located at:

    `~/.aws/credentials` on Linux, macOS, or Unix

    `C:\Users\USERNAME\.aws\credentials` on Windows

    This file should contain lines in the following format:

    ```bash
    [default]
    aws_access_key_id = <your_access_key_id>
    aws_secret_access_key = <your_secret_access_key>
    ```
    Substitute your own AWS credentials values for the values `<your_access_key_id>` and `<your_secret_access_key>`.

  * Environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
  
    Set the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables.

    To set these variables on Linux, macOS, or Unix, use `export`:

    ```bash
    export AWS_ACCESS_KEY_ID=<your_access_key_id>
    export AWS_SECRET_ACCESS_KEY=<your_secret_access_key>
    ```

    To set these variables on Windows, use `set`:

    ```bash
    set AWS_ACCESS_KEY_ID=<your_access_key_id>
    set AWS_SECRET_ACCESS_KEY=<your_secret_access_key>
    ```

* Initialize working directory.

  The first command that should be run after writing a new Terraform configuration is the `terraform init` command in order to initialize a working directory containing Terraform configuration files. It is safe to run this command multiple times.

  ```bash
  terraform init
  ```

* Configure S3 bucket name.

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

* Test the deploy.

  When the `terraform apply` command completes, use the AWS console, you should see the new S3 bucket created.

* Clean up the resources created.

  When you have finished, run command:

  ```bash
  terraform destroy
  ```