output "instance_id" {
  description = "The ID of the created compute instance."
  value       = nhncloud_compute_instance_v2.this.id
}

output "private_ip" {
  description = "The private IP address of the instance."
  value       = nhncloud_compute_instance_v2.this.access_ip_v4
}

output "public_ip" {
  description = "The public (floating) IP address of the instance."
  value       = var.assign_floating_ip ? nhncloud_networking_floatingip_v2.fip[0].address : null
}
