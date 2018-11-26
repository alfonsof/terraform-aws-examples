# Terraform Zero-Downtime Deployment example

This folder contains a zero-downtime deployment example of a [Terraform](https://www.terraform.io/) installed on your computer file on AWS (Amazon Web Services).

It shows how to deploy a new AMI across the cluster when you have made changes to your code. In addition, you control the text the User Data script return from its one-liner HTTP server.

Furthermore, it shows how to develop (not duplicating code) web server clusters in different environments using a module.

The environments are:

* Staging (stage)
* Production (prod)

This is the file layout in this repo:

```bash
live
    ├── global
    │       └── s3/
    │           ├── main.tf
    │           └── (etc)
    │
    ├── stage
    │       ├── services/
    │       │   └── webserver-cluster/
    │       │       ├── main.tf
    │       │       └── (etc)
    │       └── data-stores/
    │           └── mysql/
    │               ├── main.tf
    │               └── (etc)
    │
    └── prod
            ├── services/
            │   └── webserver-cluster/
            │       ├── main.tf
            │       └── (etc)
            └── data-stores/
                └── mysql/
                    ├── main.tf
                    └── (etc)

modules
    └── services/
        └── webserver-cluster/
            ├── main.tf
            └── (etc)
```

It uses in common for both environments:

* Terraform Remote State example: [live/global/s3](live/global/s3)
* Terraform Web Server Cluster module example: [modules/services/webserver-cluster](modules/services/webserver-cluster)

It uses for staging environment:

* Terraform MySQL on RDS example (staging environment): [live/stage/data-stores/mysql](live/stage/data-stores/mysql)
* Terraform Web Server Cluster example (staging environment): [live/stage/services/webserver-cluster](live/stage/services/webserver-cluster)

It uses for production environment:

* Terraform MySQL on RDS example (production environment): [live/prod/data-stores/mysql](live/prod/data-stores/mysql)
* Terraform Web Server Cluster example (production environment): [live/prod/services/webserver-cluster](live/prod/services/webserver-cluster)

## Requirements

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.
* It uses the Terraform AWS Provider that interacts with the many resources supported by AWS through its APIs.
* This code was written for Terraform 0.10.x.

## Using the code

Configure your AWS access keys.

Use Terraform Remote State example for creating the remote state bucket. See: [live/global/s3](live/global/s3)

Use Terraform module example for Web Server Cluster example in the staging environment and Web Server Cluster example in the production environment. See: [modules/services/webserver-cluster](modules/services/webserver-cluster)

Use Terraform MySQL on RDS example for creating a MySQL database in the staging environment. See: [live/stage/data-stores/mysql](live/stage/data-stores/mysql)

Use Terraform Web Server Cluster example for creating a web server cluster in the staging environment. See: [live/stage/services/webserver-cluster](live/stage/services/webserver-cluster)

Use Terraform MySQL on RDS example for creating a MySQL database in the production environment. See: [live/prod/data-stores/mysql](live/prod/data-stores/mysql)

Use Terraform Web Server Cluster example for creating a web server cluster in the production environment. See: [live/prod/services/webserver-cluster](live/prod/services/webserver-cluster)
