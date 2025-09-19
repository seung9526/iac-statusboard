terraform {
  required_version = ">= 1.0.0"
  required_providers {
    nhncloud = {
      source  = "nhn-cloud/nhncloud"
      version = "1.0.6"
    }
  }
}

provider "nhncloud" {
  # Default provider for Compute, Networking, etc.
  user_name = var.nhn_user_name
  tenant_id = var.nhn_tenant_id
  password  = var.nhn_password
  auth_url  = var.nhn_auth_url
  region    = var.nhn_region

  endpoint_overrides = {
    "network" = "https://${lower(var.nhn_region)}-api-network-infrastructure.nhncloudservice.com/v2.0/"
  }
}

module "vpc" {
  source            = "./network"
  nhn_region        = var.nhn_region
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  public_network_id = data.nhncloud_networking_network_v2.public_network.id
  providers         = { nhncloud = nhncloud }
}

module "compute_backend" {
  source = "./compute"

  instance_name = "statusboard-backend"
  assign_floating_ip = false

  flavor_id     = var.flavor_id
  image_id      = data.nhncloud_images_image_v2.ubuntu_2404.id
  key_pair      = var.key_pair
  nhn_region    = var.nhn_region

  network_id  = module.vpc.network_id
  subnet_id   = module.vpc.subnet_id
  secgroup_id = module.vpc.secgroup_id

  public_network_id = data.nhncloud_networking_network_v2.public_network.id

  providers = { nhncloud = nhncloud }
}

module "compute_frontend" {
  source = "./compute"

  instance_name = "statusboard-frontend"
  assign_floating_ip = true

  flavor_id     = var.flavor_id
  image_id      = data.nhncloud_images_image_v2.ubuntu_2404.id
  key_pair      = var.key_pair
  nhn_region    = var.nhn_region

  network_id  = module.vpc.network_id
  subnet_id   = module.vpc.subnet_id
  secgroup_id = module.vpc.secgroup_id

  public_network_id = data.nhncloud_networking_network_v2.public_network.id

  providers = { nhncloud = nhncloud }
}
