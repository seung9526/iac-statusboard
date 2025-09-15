resource "nhncloud_networking_floatingip_v2" "fip" {
  pool = "Public Network"
}

resource "nhncloud_networking_floatingip_associate_v2" "fip_assoc" {
  floating_ip = nhncloud_networking_floatingip_v2.fip.address
  port_id     = nhncloud_networking_port_v2.main.id
}
