# Terraform AWS Infrastructure

Infrastructure as Code project using Terraform to provision AWS infrastructure.

## Technologies
- Terraform
- AWS
- VPC
- EC2
- IAM
- Security Groups
- Internet Gateway
- Route Tables
- Amazon Linux

## Architecture
Developer -> Terraform -> AWS VPC -> Public Subnet -> Security Group -> EC2 -> Apache Web Server

## AWS Resources
- AWS VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- EC2 Instance

## Terraform Commands
```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## Workflow
1. Configure AWS provider
2. Create VPC
3. Create public subnet
4. Create Internet Gateway
5. Create route table
6. Create security group
7. Launch EC2 instance
8. Install Apache using EC2 user data
9. Output EC2 public IP
10. Destroy infrastructure after testing

## Author
Mahendra Thorat

DevOps Engineer | AWS | Azure | Docker | Kubernetes | Jenkins | Terraform | CI/CD

GitHub: https://github.com/thoratmahendrav999
