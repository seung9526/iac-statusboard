output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "object_storage_bucket" {
  value = module.storage.bucket_name
}
