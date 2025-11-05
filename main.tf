resource "aws_route53_zone" "this" {
  name = var.domain_name
  comment = "Hosted zone for ${var.domain_name}"
}

# Optional DNS records
resource "aws_route53_record" "records" {
  for_each = var.records
  zone_id  = aws_route53_zone.this.zone_id
  name     = each.value.name
  type     = each.value.type
  ttl      = each.value.ttl
  records  = each.value.records
}
