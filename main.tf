terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.65.0"
    }
  }
  backend "local" {}
}

provider "azurerm" {
  features {}
}

#resource group
module "resourcegroup" {
  source  = "./azure_modules/resource group"
  rg_maps = var.rg_maps
}

#network security groups with rule 
module "nsgs" {
  source   = "./azure_modules/network security group"
  nsg_maps = var.nsg_maps
  rg_maps  = module.resourcegroup.rg_maps
}

#virtual network - subnet module with nsg association
module "vnetsnet" {
  source    = "./azure_modules/vnet"
  vnet_maps = var.vnet_maps
  nsg_maps  = module.nsgs.nsg_maps
  rg_maps   = module.resourcegroup.rg_maps
}

#route table 
module "routetable" {
  source             = "./azure_modules/route table"
  rt_maps            = var.rt_maps
  rtAssociation_maps = var.rtAssociation_maps
  rg_maps            = module.resourcegroup.rg_maps
  snet_maps          = module.vnetsnet.snet_maps
}

#public IP
module "pips" {
  source         = "./azure_modules/public ip"
  pip_maps       = var.pip_maps
  rg_maps        = module.resourcegroup.rg_maps
}

#load balancer 
module "loadbalancer" {
  source                  = "./azure_modules/load balancer"
  lb_maps                 = var.lb_maps
  rg_maps                 = module.resourcegroup.rg_maps
  lbBackendpool_maps      = var.lbBackendpool_maps
  lbprobe_maps            = var.lbprobe_maps
  lbBackendPoolRules_maps = var.lbBackendPoolRules_maps
  lbNICAssociation_maps   = var.lbNICAssociation_maps
  pip_maps                = module.pips.pip_maps
  snet_maps               = module.vnetsnet.snet_maps
}
/*
#vnet peering
module "vnetpeering" {
  source           = "./azure_modules/vnet peerings"
  vnetPeering_maps = var.vnetPeering_maps
  vnet_maps        = module.vnetsnet.vnet_maps
}*/