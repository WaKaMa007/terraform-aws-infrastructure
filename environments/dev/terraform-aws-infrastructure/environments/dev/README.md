# Terraform AWS Infrastructure

This repository contains Terraform configurations for deploying a complete web application infrastructure on AWS, including networking, compute, storage, and load balancing components.

## 🏗️ Architecture Overview

The infrastructure consists of:
- **VPC** with public and private subnets across multiple availability zones
- **Application Load Balancer** for traffic distribution
- **EC2 instances** running nginx web servers
- **S3 bucket** for static website content and ALB logs
- **Security groups** for network access control
- **IAM roles and policies** for secure resource access


## 📁 Project Structure

terraform-aws-infrastructure/
├── modules/ # Reusable Terraform modules
├── environments/ # Environment-specific configurations
├── scripts/ # Deployment and utility scripts
├── docs/ # Documentation and guides
└── website-content/ # Static website files

## 🚀 Quick Start

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/) configured
- AWS credentials with appropriate permissions

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/WaKaMa007/terraform-aws-infrastructure.git
   cd terraform-aws-infrastructure
   ```

2. **Configure AWS credentials:**
   ```bash
   aws configure
   # Enter your AWS Access Key ID, Secret Access Key, and default region
   ```

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review the plan:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```



## �� Configuration

### Environment Variables

Set the following environment variables or update `terraform.tfvars`:

```hcl
# Required variables
aws_region        = "us-east-1"
environment       = "dev"
naming_prefix     = "wakama-web-app"
instance_count    = 2
instance_type     = "t3.micro"

# Optional variables
vpc_cidr_block    = "10.0.0.0/16"
enable_dns_hostnames = true
```

## 📚 Modules

### Networking Module
- VPC creation
- Subnet configuration
- Route tables
- Internet Gateway
- NAT Gateway

### Compute Module
- EC2 instances
- Security groups
- IAM roles and policies
- User data scripts

### Storage Module
- S3 bucket creation
- Bucket policies
- Object uploads


## 🚀 Deployment

### Development Environment
```bash
cd environments/dev
terraform init
terraform plan
terraform apply
```

### Production Environment
```bash
cd environments/prod
terraform init
terraform plan
terraform apply
```


## 🔍 Monitoring and Troubleshooting

### Check Infrastructure Status
```bash
terraform show
terraform state list
```

### View Logs
- **ALB Access Logs**: Check S3 bucket `alb-logs` prefix
- **EC2 Instance Logs**: SSH to instances and check nginx logs
- **Terraform Logs**: Check `crash.log` for errors

### Common Issues

1. **Permission Denied**: Ensure IAM user has required permissions
2. **VPC Limits**: Check AWS VPC limits in your account
3. **Instance Launch Failures**: Verify security group rules and subnet configuration

## 🧹 Cleanup

### Destroy Infrastructure
```bash
terraform destroy
```
