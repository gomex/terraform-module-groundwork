# Terraform Groundwork

Please, if you are planning to run this code for any reason, use the last tag version.

Any issues, suggestions or concerns? 
Please, create an issue! 
That's the best way to argue about tech decisions and keep track of it.


## What this module does?
* Create a VPC
* Create 3 subnets [Public, Private]
* Create a couple of security groups.
* Create an ALB.
* Create a internet gateway
* Route tables
* Open ports 80/443 for the ALB security group.


## Usage

```terraform
module "dev_cluster" {
  source         = "git@github.com:gomex/terraform-module-groundwork.git?ref=v0.1"
  environment    = "development"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_region | The AWS region to create things in. | string | `"us-east-1"` | no |
| az\_count | The number of Availability Zones that we will deploy into | string | `"2"` | no |
| environment | Name of environment to be created | string | n/a | yes |
| vpc\_cidr\_block | Range of IPv4 address for the VPC. | string | `"172.17.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ecs_cluster_name | ECS cluster name. |
| aws\_vpc\_id | The ID of AWS VPC created for the ECS cluster. ||