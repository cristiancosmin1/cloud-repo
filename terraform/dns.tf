resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Name        = "${var.project_name}-${var.environment}-public-zone"
    Project     = var.project_name
    Environment = var.environment
  }
}

resource "aws_route53_record" "app" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "app.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.ingress_lb_dns_name
    zone_id                = var.ingress_lb_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "auth" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "auth.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.ingress_lb_dns_name
    zone_id                = var.ingress_lb_zone_id
    evaluate_target_health = false
  }
}
