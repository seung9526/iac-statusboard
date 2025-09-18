output "subnet_id" {
  description = "The ID of the created subnet."
  value       = module.vpc.subnet_id
}

output "router_id" {
  description = "The ID of the created router_id."
  value       = module.vpc.routingtable_id
}

output "secgroup_id" {
  description = "The ID of the security group."
  value       = module.vpc.secgroup_id
}

output "instance_id" {
  description = "The ID of the created compute instance."
  value       = module.compute.instance_id
}

output "private_ip" {
  description = "The private IP address of the instance."
  value       = module.compute.private_ip
}

output "public_ip" {
  description = "The public (floating) IP address of the instance."
  value       = module.compute.public_ip
}
