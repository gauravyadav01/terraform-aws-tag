output "bu" {
  description = "Buisness Unit"
  value       = "${local.bu}"
}

output "environment" {
  description = "Environment name lowercase"
  value       = "${local.env}"
}

output "region" {
  description = "Cloud Region"
  value       = "${local.region}"
}

output "name" {
  description = "Name of the resource"
  value       = "${local.id_suffix}"
}

output "state" {
  description = "public or private"
  value       = "${var.state}"
}

output "tags" {
  description = "Tags map merged with standard tags"
  value       = "${local.tags}"
}
