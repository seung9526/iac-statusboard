# network/vpc.tf - Fixed VPC configuration

# network/vpc.tf - Working VPC configuration

resource "nhncloud_networking_vpc_v2" "vpc" {
  name   = "statusboard-vpc"
  cidrv4 = var.vpc_cidr
}

# Create routing table first
resource "nhncloud_networking_routingtable_v2" "rt" {
  name   = "statusboard-rt"
  vpc_id = nhncloud_networking_vpc_v2.vpc.id
}

resource "nhncloud_networking_vpcsubnet_v2" "subnet" {
  vpc_id          = nhncloud_networking_vpc_v2.vpc.id
  name            = "statusboard-subnet"
  cidr            = var.subnet_cidr
  routingtable_id = nhncloud_networking_routingtable_v2.rt.id
}

# Create security group
resource "nhncloud_networking_secgroup_v2" "secgroup" {
  name = "statusboard-sg"
}

# SSH inbound rule
resource "nhncloud_networking_secgroup_rule_v2" "ssh" {
  security_group_id = nhncloud_networking_secgroup_v2.secgroup.id
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
}
