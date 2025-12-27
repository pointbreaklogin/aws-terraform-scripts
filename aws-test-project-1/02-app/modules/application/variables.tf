variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}

variable "ami_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "web_tier_sg_id" {
  type        = string
  description = "Security Group ID of the Web Tier (to allow traffic to App)"
}

variable "rds_endpoint" {
  type = string
}

variable "db_master_user" {
  type = string
}

variable "db_master_password" {
  type = string
}