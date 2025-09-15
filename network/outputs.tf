output "vpc_id" {
  value = nhncloud_networking_vpc_v2.vpc.id
}

output "subnet_id" {
  value = nhncloud_networking_vpcsubnet_v2.subnet.id
}

output "secgroup_id" {
  value = nhncloud_networking_secgroup_v2.secgroup.id
}
