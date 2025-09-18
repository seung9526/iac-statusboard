data "nhncloud_images_image_v2" "ubuntu_2404" {
  name        = "Ubuntu Server 24.04.2 LTS (2025.07.15)"
  most_recent = true
}

data "nhncloud_networking_network_v2" "public_network" {
  name = "Public Network"
}
