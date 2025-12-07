/*
#output the name server
output "name_servers" {
  description = "name server data for hostinger"
  value = aws_route53_zone.main.name_servers
}
*/

#print output public ip of presentation tier instances
output "presentation_tier_a_ip" {
  value = aws_instance.presentation_tier_instance_a.public_ip
}

output "presentation_tier_b_ip" {
  value = aws_instance.presentation_tier_instance_b.public_ip
}