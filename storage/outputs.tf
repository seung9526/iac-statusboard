output "object_storage_name" {
  description = "The name of the object storage container."
  value       = nhncloud_objectstorage_container_v1.bucket.name
}
