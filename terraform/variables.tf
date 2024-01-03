variable "instance_vpc_security_group_ids" {
  type = list(string)

}

variable "instance_subnet_id" {
  type = string
}

variable "route53_zone_id" {
  type = string
}

variable "route53_zone_name" {
  type = string
}

variable "route53_record_name" {
  type = string
}

variable "manual_letsencrypt_repo" {
  type = string
}
