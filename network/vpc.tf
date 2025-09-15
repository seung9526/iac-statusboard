# network/vpc.tf

resource "nhncloud_networking_vpc_v2" "vpc" {
  name   = "statusboard-vpc"
  cidrv4 = var.vpc_cidr
}

resource "nhncloud_networking_vpcsubnet_v2" "subnet" {
  vpc_id = nhncloud_networking_vpc_v2.vpc.id
  name   = "statusboard-subnet"
  cidr   = var.subnet_cidr
}

resource "nhncloud_networking_secgroup_v2" "secgroup" {
  name = "statusboard-sg"
}

# SSH 인바운드
resource "nhncloud_networking_secgroup_rule_v2" "ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = nhncloud_networking_secgroup_v2.secgroup.id
}

# 모든 아웃바운드 허용
resource "nhncloud_networking_secgroup_rule_v2" "egress" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 0
  port_range_max    = 65535
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = nhncloud_networking_secgroup_v2.secgroup.id
}
