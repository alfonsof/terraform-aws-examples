# Terraform MySQL on RDS example (staging environment)

This folder contains a MySQL on RDS example of a Terraform file [Terraform](https://www.terraform.io/).

This Terraform file deploys a MySQL database using RDS on AWS (Amazon Web Services)

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

* Configure Terraform backend.

  Modify the S3 bucket name, which is defined in the `bucket` attribute in `backend.tf` file.

  ```bash
  bucket = "<YOUR_BUCKET_NAME>"
  ```

* Configure database password.

  The database password is managed by the `db_password` input variable.

  Terraform will parse any environment variables that are prefixed with `TF_VAR`. You must create an environment variable `TF_VAR_db_password`:

  ```bash
  TF_VAR_db_password=<YOUR_DB_PASSWORD>
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

  You should see a new RDS MySQL database on AWS (Amazon Web Services).

* Clean up the resources created.

  When you have finished, run command:

  ```bash
  terraform destroy
  ```