# 네트워크 관련 출력
output "subnet_id" {
  description = "The ID of the created subnet."
  value       = module.vpc.subnet_id
}

output "router_id" {
  description = "The ID of the created router."
  value       = module.vpc.routingtable_id
}

output "secgroup_id" {
  description = "The ID of the security group."
  value       = module.vpc.secgroup_id
}

# Backend 인스턴스 관련 출력
output "backend_instance_id" {
  description = "The ID of the backend compute instance."
  value       = module.compute_backend.instance_id
}

output "backend_private_ip" {
  description = "The private IP of the backend instance."
  value       = module.compute_backend.private_ip
}

output "backend_public_ip" {
  description = "The public IP of the backend instance (if any)."
  value       = module.compute_backend.public_ip
}

# Frontend 인스턴스 관련 출력
output "frontend_instance_id" {
  description = "The ID of the frontend compute instance."
  value       = module.compute_frontend.instance_id
}

output "frontend_private_ip" {
  description = "The private IP of the frontend instance."
  value       = module.compute_frontend.private_ip
}

output "frontend_public_ip" {
  description = "The public (floating) IP of the frontend instance."
  value       = module.compute_frontend.public_ip
}
