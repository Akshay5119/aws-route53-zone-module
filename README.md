# AWS Route53 Hosted Zone Module

This Terraform module creates an AWS Route 53 hosted zone and optional DNS records.

## Usage

```hcl
module "route53_zone" {
  source = "github.com/akshaypawar/aws-route53-zone-module"
  domain_name = "awsnow.live"

  records = {
    www = {
      name    = "www.awsnow.live"
      type    = "A"
      ttl     = 300
      records = ["1.2.3.4"]
    }
  }
}
