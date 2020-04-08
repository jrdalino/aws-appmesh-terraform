# Terraform module to provision an AWS AppMesh

## Prerequisites
Provision an S3 bucket to store Terraform State and DynamoDB for state-lock
using https://github.com/jrdalino/aws-tfstate-backend-terraform

## Usage
- Replace variables in terraform.tfvars
- Replace variables in state_config.tf
- Initialize, Review Plan and Apply
```
$ terraform init
$ terraform plan
$ terraform apply
```

## Inputs
| Name | Description |
|------|-------------|
| | |

## Outputs
| Name | Description |
|------|-------------|
| | |

## References
- https://medium.com/digio-australia/managing-your-eks-traffic-with-app-mesh-a8838e27e7a1
- https://www.appmeshworkshop.com/
- https://eksworkshop.com/advanced/320_servicemesh_with_appmesh/
- https://www.unitygroup.com/blog/should-you-consider-service-mesh-microservices-architecture/