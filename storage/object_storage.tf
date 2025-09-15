resource "nhncloud_objectstorage_container_v1" "bucket" {
  provider = nhncloud
  name = var.object_storage_name
}
