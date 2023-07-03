variable "rg_maps" {
  type        = list(any)
  default     = []
  description = "list of resource group objects "
}

variable "nsg_maps" {
  type        = list(any)
  default     = []
  description = "list of Network resource  objects with rules"
}

variable "vnet_maps" {
  type        = list(any)
  default     = []
  description = "list of Virtual Network objects with subnet and nsg associate"
}

variable "rt_maps" {
  type        = list(any)
  default     = []
  description = "list of route table objects"
}

variable "rtAssociation_maps" {
  type        = list(any)
  default     = []
  description = "list of objects for route table and subnet association"
}

variable "vnetPeering_maps" {
  type        = list(any)
  default     = []
  description = "list of vnet peering objects"
}

variable "pip_maps" {
  type        = list(any)
  default     = []
  description = "list of public IP's objects "
}


variable "lb_maps" {
  type        = list(any)
  default     = []
  description = "list of load balancer objects"
}

variable "lbBackendPoolRules_maps" {
  type        = list(any)
  default     = []
  description = "list of load balancer backendpool rules objects"
}

variable "lbprobe_maps" {
  type        = list(any)
  default     = []
  description = "list of load balancer probe objects"
}

variable "lbBackendpool_maps" {
  type        = list(any)
  default     = []
  description = "list of load balancer backend pool objects"
}

variable "lbNICAssociation_maps" {
  type        = list(any)
  default     = []
  description = "list of load balancer backend pool nic association objects"
}
