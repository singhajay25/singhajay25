locals {
  subnet_common_tags = {
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}

variable "region_name" {
  description = "Region name to launch VPC network"
  type        = string
  default     = "ap-south-1"

}

variable "environment" {
  description = "Environment name for deployment"
  type        = string
  default     = "Development"
}

variable "vpc_cidr_block" {
  description = "VPC network CIDR"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnets" {
  description = "Provider public subnets CIDR values"
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.2.0/24"]
}

variable "private_subnets" {
  description = "Provide private subnets CIDR values"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.3.0/24"]
}

variable "private_az" {
  description = "AZ names for public subnets"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "public_az" {
  description = "AZ names for public subnets"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}