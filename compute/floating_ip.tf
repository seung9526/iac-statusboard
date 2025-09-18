# compute/floating_ip.tf - Fixed floating IP configuration

resource "nhncloud_networking_floatingip_v2" "fip" {
  pool = "Public Network"
}

resource "nhncloud_compute_floatingip_associate_v2" "fip_associate" {
  floating_ip = nhncloud_networking_floatingip_v2.fip.address
  instance_id = nhncloud_compute_instance_v2.main.id
}

