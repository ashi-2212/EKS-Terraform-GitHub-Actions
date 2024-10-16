terraform {
  backend "s3" {
    bucket         = "my-ews-baket1"
    region         = "us-east-1"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  
  required_version = ">= 1.0.0"  # Update to ensure compatibility with the AWS provider
  required_providers {
    aws = {
      version = ">= 5.49.0"  # Update to match the AWS provider version you want to use
      source  = "hashicorp/aws"
    }
  }
}
