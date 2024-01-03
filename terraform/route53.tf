resource "aws_route53_record" "auto-letsencrypt-route53_record" {
  zone_id = var.route53_zone_id
  name    = var.route53_record_name
  type    = "A"
  ttl     = 300
  records = [module.auto-letsencrypt-instance.public_ip]
}
