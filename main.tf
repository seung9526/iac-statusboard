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
  user_name = var.nhn_user_name
  tenant_id = var.nhn_tenant_id
  password  = var.nhn_password
  auth_url  = var.nhn_auth_url
  region    = var.nhn_region
}

module "vpc" {
  source = "./network"
}

module "storage" {
  source = "./storage"
}

module "compute" {
  source = "./compute"

  instance_name = var.instance_name
  flavor_id     = var.flavor_id
  image_id      = var.image_id
  key_pair      = var.key_pair
  vpc_id        = module.vpc.vpc_id
  network_id    = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_id
  secgroup_id   = module.vpc.secgroup_id
}
