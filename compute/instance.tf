resource "nhncloud_compute_instance_v2" "main" {
  name      = var.instance_name
  flavor_id = var.flavor_id
  image_id  = var.image_id
  key_pair  = var.key_pair

  security_groups = [var.secgroup_id]

  network {
    uuid = var.subnet_id
  }
}
