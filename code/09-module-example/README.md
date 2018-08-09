# Terraform Module example

This folder contains a module example of a [Terraform](https://www.terraform.io/) file on AWS (Amazon Web Services).

It shows how to develop (not duplicating code) web server clusters in different environments using a module. The environments are:

* Staging (stage)
* Production (prod)

It uses in common for both environments:

* Terraform Remote State example: [global/s3](global/s3)
* Terraform Web Server Cluster module example: [modules/services/webserver-cluster](modules/services/webserver-cluster)

It uses for staging environment:

* Terraform MySQL on RDS example (staging environment): [stage/data-stores/mysql](stage/data-stores/mysql)
* Terraform Web Server Cluster example (staging environment): [stage/services/webserver-cluster](stage/services/webserver-cluster)

It uses for production environment:

* Terraform MySQL on RDS example (production environment): [prod/data-stores/mysql](prod/data-stores/mysql)
* Terraform Web Server Cluster example (production environment): [prod/services/webserver-cluster](prod/services/webserver-cluster)

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
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

* The first command that should be run after writing a new Terraform configuration is the terraform `init command` in order to initialize a working directory containing Terraform configuration files. It is safe to run this command multiple times.

  ```bash
  terraform init
  ```

* Use Terraform Remote State example for creating the remote state bucket. See: [global/s3](global/s3)

* Use Terraform module example for Web Server Cluster example in the staging environment and Web Server Cluster example in the production environment. See: [modules/services/webserver-cluster](modules/services/webserver-cluster)

* Use Terraform MySQL on RDS example for creating a MySQL database in the staging environment. See: [stage/data-stores/mysql](stage/data-stores/mysql)

* Use Terraform Web Server Cluster example for creating a web server cluster in the staging environment. See: [stage/services/webserver-cluster](stage/services/webserver-cluster)

* Use Terraform MySQL on RDS example for creating a MySQL database in the production environment. See: [prod/data-stores/mysql](prod/data-stores/mysql)

* Use Terraform Web Server Cluster example for creating a web server cluster in the production environment. See: [prod/services/webserver-cluster](prod/services/webserver-cluster)
