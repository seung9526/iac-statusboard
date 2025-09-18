# network/outputs.tf - Updated outputs

output "subnet_id" {
  value = nhncloud_networking_vpcsubnet_v2.subnet.id
}

output "secgroup_id" {
  value = nhncloud_networking_secgroup_v2.secgroup.id
}

output "routingtable_id" {
  description = "Routing table ID"
  value       = nhncloud_networking_routingtable_v2.rt.id
}

output "network_id" {
  value = nhncloud_networking_vpc_v2.vpc.id
}
