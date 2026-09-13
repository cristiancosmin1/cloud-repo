variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
}

variable "node_instance_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "domain_name" {
  description = "Public domain name used by the platform"
  type        = string
}

variable "ingress_lb_dns_name" {
  description = "DNS name of the Kubernetes ingress Load Balancer"
  type        = string
}

variable "ingress_lb_zone_id" {
  description = "Canonical hosted zone ID of the ingress Load Balancer"
  type        = string
}
