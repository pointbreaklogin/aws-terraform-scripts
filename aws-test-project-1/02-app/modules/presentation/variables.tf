variable "vpc_id" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "ami_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "ssh_private_key" {
  type        = string
  description = "Content of the private key for SSH connections"
}

variable "app_tier_ip_a" {
  type = string
}

variable "app_tier_ip_b" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "project_name" {
  type = string
}

variable "alb_zone_id" {
  type = string
}