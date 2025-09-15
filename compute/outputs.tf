output "instance_id" {
  value = nhncloud_compute_instance_v2.main.id
}

output "floating_ip" {
  value = nhncloud_networking_floatingip_v2.fip.address
}
