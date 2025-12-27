variable "vpc_id" {
  type        = string
  description = "The VPC ID where the database will be deployed"
}

variable "db_subnets" {
  type        = list(string)
  description = "List of private subnet IDs for the RDS subnet group"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
}

variable "app_tier_sg_id" {
  type        = string
  description = "Security Group ID of the App Tier (to allow traffic to DB)"
}

variable "db_username" {
  type        = string
  description = "admin user for RDS instance"
}

variable "db_password" {
  type        = string
  description = "password for the RDS admin user"
}