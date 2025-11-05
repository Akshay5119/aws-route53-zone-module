output "zone_id" {
  description = "The ID of the hosted zone."
  value       = aws_route53_zone.this.zone_id
}

output "name_servers" {
  description = "The name servers for the hosted zone."
  value       = aws_route53_zone.this.name_servers
}

output "records" {
  description = "The DNS records created in the hosted zone."
  value = {
    for record_key, record in aws_route53_record.records :
    record_key => {
      name    = record.name
      type    = record.type
      ttl     = record.ttl
      records = record.records
    }
  }
}

