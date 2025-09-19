# compute/floating_ip.tf - Fixed floating IP configuration

resource "nhncloud_networking_floatingip_v2" "fip" {
  count = var.assign_floating_ip ? 1 : 0
  pool = "Public Network"
}

resource "nhncloud_compute_floatingip_associate_v2" "fip_associate" {
  count       = var.assign_floating_ip ? 1 : 0
  floating_ip = nhncloud_networking_floatingip_v2.fip[count.index].address
  instance_id = nhncloud_compute_instance_v2.this.id
}

