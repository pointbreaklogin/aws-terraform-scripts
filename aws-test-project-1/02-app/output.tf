#Presentation Tier Outputs (From the 'presentation' module)
output "presentation_tier_a_ip" {
  description = "Public IP of Presentation Tier Instance A"
  value       = module.presentation.presentation_a_public_ip
}

output "presentation_tier_b_ip" {
  description = "Public IP of Presentation Tier Instance B"
  value       = module.presentation.presentation_b_public_ip
}

output "alb_dns_name" {
  description = "The DNS name of the Load Balancer"
  value       = module.presentation.alb_dns_name
}

#Application Tier Outputs (From the 'application' module)
output "application_tier_a_private_ip" {
  description = "Private IP of Application Tier Instance A"
  value       = module.application.private_ip_a
}

output "application_tier_b_private_ip" {
  description = "Private IP of Application Tier Instance B"
  value       = module.application.private_ip_b
}

#Database Tier Outputs (From the 'database' module)
output "rds_endpoint" {
  description = "The endpoint URL of the RDS instance"
  value       = module.database.rds_endpoint
}

#global Output value
output "website_url" {
  value = "https://${var.domain_name}"
}