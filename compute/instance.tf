# compute/instance.tf - Fixed compute instance configuration

resource "nhncloud_compute_instance_v2" "this" {
  name            = var.instance_name
  flavor_name     = var.flavor_id
  image_id        = var.image_id
  key_pair        = var.key_pair
  security_groups = [var.secgroup_id]

  network {
    uuid = var.network_id
  }

  block_device {
    uuid                  = var.image_id
    source_type           = "image"
    destination_type      = "volume"
    volume_size           = 20
    delete_on_termination = true
  }
}
