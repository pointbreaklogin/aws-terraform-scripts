variable "aws_region" {
  type        = string
  description = "The AWS region to deploy into"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name prefix for tags"
}