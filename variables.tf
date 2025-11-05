variable "domain_name" {
  description = "The domain name for which the hosted zone will be created."
  type        = string
}

variable "records" {
  description = "Map of DNS records to create."
  type = map(object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  }))
  default = {}
}
