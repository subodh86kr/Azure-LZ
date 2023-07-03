#resource group object
rg_maps = [
  {
    rg_name     = "maximo-nprod-use-rg"
    rg_location = "EASTUS"
  },
  {
    rg_name     = "global-nprd-usw-rg"
    rg_location = "WestUS"
  },
  {
    rg_name     = "global-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "kofax-uat01-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "aksv2devusecluster-worker"
    rg_location = "EastUS"
  },
  {
    rg_name     = "aksv2perfusecluster-worker"
    rg_location = "EastUS"
  },
  {
    rg_name     = "aksv2qausecluster-worker"
    rg_location = "EastUS"
  },
  {
    rg_name     = "aksv2uatusecluster-worker"
    rg_location = "EastUS"
  },
  {
    rg_name     = "aks-v2-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "analytics-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "connectity-test-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "custapps-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "dmt-iaas-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "gafcom-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "global-nprd-use-developer-vdi-core-infra"
    rg_location = "EastUS"
  },
  {
    rg_name     = "global-nprd-use-rg-network-services"
    rg_location = "EastUS"
  },
  {
    rg_name     = "it-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "kofax-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "maximo-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "mulesoft-nprod-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "nprd-use-appservers-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "pro2sql-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "psoftgaf-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "psoftsip-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "relmgt-dev-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "rewards-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "tableau-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "varnet-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "workbelt-nprd-use-rg"
    rg_location = "EastUS"
  },
  {
    rg_name     = "zerto-nprd-use-internal-rg"
    rg_location = "EastUS"
  },
  {
    rg_name   = "wvd-nprd-use-rg"
    rg_location = "Eastus"
  }

]


#network security group object with rules
nsg_maps = [
  {
    nsg_name     = "glb-nprd-subs-use-nsg"
    nsg_rg_name  = "global-nprd-use-rg"
    nsg_location = "EASTUS"
  },
  {
    nsg_name     = "workbelt-nprd-use-nsg"
    nsg_rg_name  = "workbelt-nprd-use-rg"
    nsg_location = "EASTUS"
  },
  {
    nsg_name     = "global_nprd_use-vnet-jumpbox-subnet-nsg"
    nsg_rg_name  = "global-nprd-use-rg-network-services"
    nsg_location = "EASTUS"
  },
  {
    nsg_name     = "wvd-nprd-use-nsg"
    nsg_rg_name  = "wvd-nprd-use-rg"
    nsg_location = "EASTUS"
  }
]



#virtual network object with subnet and nsg association
vnet_maps = [
  {
    vnet_name       = "aks-v2-nprd-use-vnet"
    vnet_addr_space = ["10.218.0.0/19",
                       "10.218.32.0/23"]
    vnet_rg_name    = "aks-v2-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "aks-v2-nprd-uat-use-subnet"
        sub_addr_space = "10.218.16.0/21"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-ingress-v2-nprd-qa-use-subnet"
        sub_addr_space = "10.218.32.32/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-ingress-v2-nprd-uat-use-subnet"
        sub_addr_space = "10.218.32.64/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-v2-nprd-perf-use-subnet"
        sub_addr_space = "10.218.24.0/21"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-v2-nprd-dev-use-subnet"
        sub_addr_space = "10.218.0.0/21"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-ingress-v2-nprd-perf-use-subnet"
        sub_addr_space = "10.218.32.96/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-v2-nprd-qa-use-subnet"
        sub_addr_space = "10.218.8.0/21"
        sub_nsg_name   = null
      },
      {
        sub_name       = "aks-ingress-v2-nprd-dev-use-subnet"
        sub_addr_space = "10.218.32.0/27"
        sub_nsg_name   = null
      }

    ]
  },

  {
    vnet_name       = "analytics-nprd-use-vnet"
    vnet_addr_space = ["10.220.97.0/24"]
    vnet_rg_name    = "analytics-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "analytics-nprd-use-data-subnet"
        sub_addr_space = "10.220.97.16/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "connectivity-test-nprd-use-vnet"
    vnet_addr_space = ["10.220.93.0/24"]
    vnet_rg_name    = "connectity-test-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "test-vm-subnet"
        sub_addr_space = "10.220.93.0/27"
        sub_nsg_name   = null
      }
    ]
  },

  {
    vnet_name       = "custapps-nprd-use-vnet"
    vnet_addr_space = ["10.220.96.0/24"]
    vnet_rg_name    = "custapps-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "custapps-nprd-use-dev-app-subnet"
        sub_addr_space = "10.220.96.16/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-dev-data-subnet"
        sub_addr_space = "10.220.96.32/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-dev-web-subnet"
        sub_addr_space = "10.220.96.0/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-qa-app-subnet"
        sub_addr_space = "10.220.96.64/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-qa-web-subnet"
        sub_addr_space = "10.220.96.48/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-qa-data-subnet"
        sub_addr_space = "10.220.96.80/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-uat-app-subnet"
        sub_addr_space = "10.220.96.112/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-perf-web-subnet"
        sub_addr_space = "10.220.96.144/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-uat-data-subnet"
        sub_addr_space = "10.220.96.128/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-perf-app-subnet"
        sub_addr_space = "10.220.96.160/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-perf-data-subnet"
        sub_addr_space = "10.220.96.176/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-use-uat-web-subnet"
        sub_addr_space = "10.220.96.96/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "custapps-nprd-ilb-subnet"
        sub_addr_space = "10.220.96.224/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "dmt-iaas-nprd-use-vnet"
    vnet_addr_space = ["10.220.95.0/24"]
    vnet_rg_name    = "dmt-iaas-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "dmt-iaas-nprd-use-subnet"
        sub_addr_space = "10.220.95.0/26"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "gafcom-v2-nprd-use-vnet"
    vnet_addr_space = ["10.220.67.0/24"]
    vnet_rg_name    = "gafcom-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "gafcom-v2-nprd-use-vnet-dev-sitecore"
        sub_addr_space = "10.220.67.160/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-uat-sitecore"
        sub_addr_space = "10.220.67.0/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-qa-sitecore"
        sub_addr_space = "10.220.67.64/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-qa-api-services"
        sub_addr_space = "10.220.67.96/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-qa-jobs"
        sub_addr_space = "10.220.67.224/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-dev-api-services"
        sub_addr_space = "10.220.67.128/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-uat-api-services"
        sub_addr_space = "10.220.67.32/27"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name       = "gafcom-v2-nprd-use-vnet-uat-jobs"
        sub_addr_space = "10.220.67.240/28"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "vdi-use-nprd-vnet"
    vnet_addr_space = ["10.220.120.0/24"]
    vnet_rg_name    = "global-nprd-use-developer-vdi-core-infra"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "vdi_subnet"
        sub_addr_space = "10.220.120.0/25"
        sub_nsg_name   = null
      }
    ]
  },

  {
    vnet_name       = "global-nprd-use-vnet"
    vnet_addr_space = ["10.220.64.0/24"]
    vnet_rg_name    = "global-nprd-use-rg-network-services"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "network_64_0-127"
        sub_addr_space = "10.220.64.0/25"
        sub_nsg_name   = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "global-v2-nprd-use-hub-vnet"
    vnet_addr_space = ["10.220.125.0/24"]
    vnet_rg_name    = "global-nprd-use-rg-network-services"
    vnet_location   = "EastUS"
    
    subnet = [

      {
        sub_name       = "AzureFirewallSubnet"
        sub_addr_space = "10.220.125.0/26"
        sub_nsg_name   = null
      },
      {
        sub_name       = "global-v2-nprd-use-private-waf-subnet"
        sub_addr_space = "10.220.125.128/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "global-v2-nprd-use-public-waf-subnet"
        sub_addr_space = "10.220.125.160/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "AzureBastionSubnet"
        sub_addr_space = "10.220.125.192/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "global-v2-nprd-use-hub-vnet-jumpbox-subnet"
        sub_addr_space = "10.220.125.96/27"
        sub_nsg_name   = "global_nprd_use-vnet-jumpbox-subnet-nsg"
      },
      {
        sub_name       = "GatewaySubnet"
        sub_addr_space = "10.220.125.64/27"
        sub_nsg_name   = null
      },
      {
        sub_name       = "global-v2-nprd-use-netapp-subnet"
        sub_addr_space = "10.220.125.240/28"
        sub_nsg_name   = null
      },
      {
        sub_name       = "global-v2-nprd-use-wvd-subnet"
        sub_addr_space = "10.220.125.224/28"
        sub_nsg_name   = "wvd-nprd-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "it-nprd-use-vnet"
    vnet_addr_space = ["10.220.89.0/24"]
    vnet_rg_name    = "it-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
        sub_name        = "it-nprd-use-subnet"
        sub_addr_space  = "10.220.89.0/24" 
        sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "kofax-nprd-use-vnet"
    vnet_addr_space = ["10.220.68.0/24"]
    vnet_rg_name    = "kofax-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
        sub_name        = "kofax-dev-use-subnet"
        sub_addr_space  = "10.220.68.0/27" 
        sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
        sub_name        = "kofax-uat01-use-subnet"
        sub_addr_space  = "10.220.68.64/27" 
        sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "maximo-nprd-use-vnet"
    vnet_addr_space = ["10.220.72.0/24"]
    vnet_rg_name    = "maximo-nprod-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "maximo-nprd-use-subnet"
      sub_addr_space  = "10.220.72.0/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "maximo-dev-use-subnet"
      sub_addr_space  = "10.220.72.64/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "maximo-qa-use-subnet"
      sub_addr_space  = "10.220.72.96/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "maximo-perf-use-subnet"
      sub_addr_space  = "10.220.72.128/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },
  {
    vnet_name       = "mulesoft-nprd-use-vnet"
    vnet_addr_space = ["10.220.91.0/24"]
    vnet_rg_name    = "mulesoft-nprod-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "mulesoft-dev-use-subnet"
      sub_addr_space  = "10.220.91.0/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "nprd-use-appservers-vnet"
    vnet_addr_space = ["10.220.87.0/24"]
    vnet_rg_name    = "nprd-use-appservers-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "nprd-use-appservers-subnet"
      sub_addr_space  = "10.220.87.0/24" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "pro2sql-nprd-use-vnet"
    vnet_addr_space = ["10.220.73.0/24"]
    vnet_rg_name    = "pro2sql-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "pro2sql-dev-use-subnet"
      sub_addr_space  = "10.220.73.0/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "pro2sql-qa-use-subnet"
      sub_addr_space  = "10.220.73.32/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "pro2sql-uat-use-subnet"
      sub_addr_space  = "10.220.73.64/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "psoftgaf-nprd-use-vnet"
    vnet_addr_space = ["10.220.98.0/24"]
    vnet_rg_name    = "psoftgaf-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "psoftgaf-nprd-use-dev-data-subnet"
      sub_addr_space  = "10.220.98.32/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftgaf-nprd-use-uat-data-subnet"
      sub_addr_space  = "10.220.98.128/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftgaf-nprd-use-uat-app-subnet"
      sub_addr_space  = "10.220.98.112/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftgaf-nprd-use-dev-app-subnet"
      sub_addr_space  = "10.220.98.16/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftgaf-nprd-use-qa-app-subnet"
      sub_addr_space  = "10.220.98.64/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftgaf-nprd-use-ilb-subnet"
      sub_addr_space  = "10.220.98.144/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "psoftsip-nprd-use-vnet"
    vnet_addr_space = ["10.220.94.0/24"]
    vnet_rg_name    = "psoftsip-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "psoftsip-nprd-use-uat-web-subnet"
      sub_addr_space  = "10.220.94.96/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftsip-nprd-use-uat-app-subnet"
      sub_addr_space  = "10.220.94.112/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftsip-nprd-use-dev-app-subnet"
      sub_addr_space  = "10.220.94.16/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftsip-nprd-use-dev-web-subnet"
      sub_addr_space  = "10.220.94.0/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftsip-nprd-use-dev-data-subnet"
      sub_addr_space  = "10.220.94.32/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftsip-nprd-use-qa-app-subnet"
      sub_addr_space  = "10.220.94.64/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "psoftsip-nprd-use-qa-web-subnet"
      sub_addr_space  = "10.220.94.48/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "azdevops-agents-vnet"
    vnet_addr_space = ["10.220.82.0/24"]
    vnet_rg_name    = "relmgt-dev-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "subnet_82_0-127_agents"
      sub_addr_space  = "10.220.82.0/25" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "subnet_82_128-191_agents_1"
      sub_addr_space  = "10.220.82.128/26" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "subnet_82_192-223_agents_2"
      sub_addr_space  = "10.220.82.192/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "rewards-nprd-use-vnet"
    vnet_addr_space = ["10.220.66.0/24"]
    vnet_rg_name    = "rewards-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      /*{
      sub_name        = "GatewaySubnet"
      sub_addr_space  = "10.220.66.64/28" 
      sub_nsg_name    = null
      },*/
      {
      sub_name        = "subnet_66_0-15_dev"
      sub_addr_space  = "10.220.66.0/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "subnet_66_48-63_perf"
      sub_addr_space  = "10.220.66.48/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "subnet_66_16-31_qa"
      sub_addr_space  = "10.220.66.16/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "subnet_66_32-47_uat"
      sub_addr_space  = "10.220.66.32/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "subnet_66_80-95_nprd"
      sub_addr_space  = "10.220.66.80/28" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "tableau-nprd-use-vnet"
    vnet_addr_space = ["10.220.79.0/24"]
    vnet_rg_name    = "tableau-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "tableau-nprd-use-subnet"
      sub_addr_space  = "10.220.79.0/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "tableau-dev-use-subnet"
      sub_addr_space  = "10.220.79.64/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "tableau-uat-use-subnet"
      sub_addr_space  = "10.220.79.128/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "tableau-qa-use-subnet"
      sub_addr_space  = "10.220.79.96/27" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "varnet-nprd-use-vnet"
    vnet_addr_space = ["10.220.90.0/24"]
    vnet_rg_name    = "varnet-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "varnet-dev-use-subnet"
      sub_addr_space  = "10.220.90.0/26" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "varnet-qa-use-subnet"
      sub_addr_space  = "10.220.90.64/26" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "varnet-uat-use-subnet"
      sub_addr_space  = "10.220.90.128/26" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      },
      {
      sub_name        = "varnet-nprd-shared-use-subnet"
      sub_addr_space  = "10.220.90.192/26" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "workbelt-nprd-use-vnet"
    vnet_addr_space = ["10.220.78.0/24"]
    vnet_rg_name    = "workbelt-nprd-use-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "workbelt-dev-use-subnet"
      sub_addr_space  = "10.220.78.0/27" 
      sub_nsg_name    = "workbelt-nprd-use-nsg"
      },
      {
      sub_name        = "workbelt-qa-use-subnet"
      sub_addr_space  = "10.220.78.128/27" 
      sub_nsg_name    = "workbelt-nprd-use-nsg"
      },
      {
      sub_name        = "workbelt-uat-use-subnet"
      sub_addr_space  = "10.220.78.64/27" 
      sub_nsg_name    = "workbelt-nprd-use-nsg"
      },
      {
      sub_name        = "workbelt-dev-use-webapp-delegation-subnet"
      sub_addr_space  = "10.220.78.32/27" 
      sub_nsg_name    = "workbelt-nprd-use-nsg"
      },
      {
      sub_name        = "workbelt-qa-use-webapp-delegation-subnet"
      sub_addr_space  = "10.220.78.160/27" 
      sub_nsg_name    = "workbelt-nprd-use-nsg"
      },
      {
      sub_name        = "workbelt-uat-use-webapp-delegation-subnet"
      sub_addr_space  = "10.220.78.96/27" 
      sub_nsg_name    = "workbelt-nprd-use-nsg"
      }
    ]
  },

  {
    vnet_name       = "zerto-nprd-use-internal-vnet"
    vnet_addr_space = ["10.220.121.0/24"]
    vnet_rg_name    = "zerto-nprd-use-internal-rg"
    vnet_location   = "EastUS"
    
    subnet = [
      {
      sub_name        = "zerto-nprd-use-internal-subnet"
      sub_addr_space  = "10.220.121.0/24" 
      sub_nsg_name    = "glb-nprd-subs-use-nsg"
      }
    ]
  },

]



#route table object 
rt_maps = [
  {
    rt_name                          = "global-v2-nprd-use-hub-spokes-to-vnet-exr-outbound"
    rt_rg_name                       = "global-nprd-use-rg-network-services"
    rt_location                      = "EastUS"
    rt_disable_bgp_route_propagation = true
    rt_route = [
      {
        name                    = "gaf-onprem-subnet-01"
        address_prefix          = "10.0.0.0/9"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "gaf-onprem-subnet-02"
        address_prefix          = "10.128.0.0/10"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "gaf-onprem-subnet-03"
        address_prefix          = "10.192.0.0/12"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "gaf-onprem-subnet-04"
        address_prefix          = "10.208.0.0/13"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {      
        name                    = "gaf-onprem-subnet-05"
        address_prefix          = "10.216.0.0/15"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "gaf-onprem-subnet-06"
        address_prefix          = "10.222.0.0/15"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "gaf-onprem-subnet-07"
        address_prefix          = "10.224.0.0/11"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "gaf-onprem-subnet-08"
        address_prefix          = "192.168.1.0/24"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      }
    ]
  },

  {
    rt_name                          = "global-v2-nprd-use-hub-vnet-exr-inbound"
    rt_rg_name                       = "global-nprd-use-rg-network-services"
    rt_location                      = "EastUS"
    rt_disable_bgp_route_propagation = false
    rt_route = [
      {
        name                    = "global-poc-use-vnet-network_128_0-127"
        address_prefix          = "10.220.128.0/25"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "global-poc-use-vnet-network_128_160-175"
        address_prefix          = "10.220.128.160/28"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      },
      {
        name                    = "global-v2-nprd-use-vnet-jumpbox-subnet"
        address_prefix          = "10.220.125.96/27"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.220.125.4"
      }
    ]
  },

  {
    rt_name                          = "global-nprd-use-aks-spokes-rt"
    rt_rg_name                       = "global-nprd-use-rg"
    rt_location                      = "EastUS"
    rt_disable_bgp_route_propagation = true
    rt_route = [
      {
        name                    = "gaf-onprem-subnet-01"
        address_prefix          = "10.0.0.0/9"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "gaf-onprem-subnet-02"
        address_prefix          = "10.128.0.0/10"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "gaf-onprem-subnet-03"
        address_prefix          = "10.192.0.0/12"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "gaf-onprem-subnet-04"
        address_prefix          = "10.208.0.0/13"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
      
        name                    = "gaf-onprem-subnet-05"
        address_prefix          = "10.0.0.0/15"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "gaf-onprem-subnet-06"
        address_prefix          = "10.222.0.0/15"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "gaf-onprem-subnet-07"
        address_prefix          = "10.224.0.0/11"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "global-nprd-azure-network-01"
        address_prefix          = "10.220.0.0/18"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "global-nprd-azure-network-02"
        address_prefix          = "10.219.0.0/18"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "global-nprd-azure-network-AKS"
        address_prefix          = "192.168.1.0/24"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      }
    ]
  },

  {
    rt_name                          = "global-nprd-use-spokes-rt"
    rt_rg_name                       = "global-nprd-use-rg"
    rt_location                      = "EastUS"
    rt_disable_bgp_route_propagation = true
    rt_route = [
      {
        name                    = "default-internet-route"
        address_prefix          = "0.0.0.0/0"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "private-intranet-01"
        address_prefix          = "10.0.0.0/8"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "private-intranet-02"
        address_prefix          = "172.16.0.0/12"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      },
      {
        name                    = "private-intranet-03"
        address_prefix          = "192.168.0.0/16"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.64.196"
      }
    ]
  },

  {
    rt_name                          = "global-nprd-usw-aks-spokes-rt"
    rt_rg_name                       = "global-nprd-usw-rg"
    rt_location                      = "WestUS"
    rt_disable_bgp_route_propagation = true
    rt_route = [
      {
        name                    = "gaf-onprem-subnet-01"
        address_prefix          = "10.0.0.0/9"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "gaf-onprem-subnet-02"
        address_prefix          = "10.128.0.0/10"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "gaf-onprem-subnet-03"
        address_prefix          = "10.192.0.0/12"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "gaf-onprem-subnet-04"
        address_prefix          = "10.208.0.0/13"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {      
        name                    = "gaf-onprem-subnet-05"
        address_prefix          = "10.216.0.0/15"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "gaf-onprem-subnet-06"
        address_prefix          = "10.222.0.0/15"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "gaf-onprem-subnet-07"
        address_prefix          = "10.224.0.0/11"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "global-nprd-azure-network-01"
        address_prefix          = "10.220.0.0/18"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "global-nprd-azure-network-02"
        address_prefix          = "10.219.0.0/18"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "global-nprd-azure-network-AKS"
        address_prefix          = "10.218.0.0/17"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      }
    ]
  },

  {
    rt_name                          = "global-nprd-usw-spokes-rt"
    rt_rg_name                       = "global-nprd-usw-rg"
    rt_location                      = "WestUS"
    rt_disable_bgp_route_propagation = true
    rt_route = [
      {
        name                    = "default-internet-route"
        address_prefix          = "0.0.0.0/0"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "private-intranet-01"
        address_prefix          = "10.0.0.0/8"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "private-intranet-02"
        address_prefix          = "172.16.0.0/12"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      },
      {
        name                    = "private-intranet-03"
        address_prefix          = "192.168.0.0/16"
        next_hop_type           = "VirtualAppliance"
        next_hop_in_ip_address  = "10.219.72.196"
      }
    ]
  }
 
]



rtAssociation_maps = [
  {
    rt_name      = "global-v2-nprd-use-hub-spokes-to-vnet-exr-outbound"
    subnet_name  = "global-v2-nprd-use-hub-vnet-jumpbox-subnet"
    vnet_name    = "global-v2-nprd-use-hub-vnet"
    vnet_rg_name = "global-nprd-use-rg-network-services"
    rt_rg_name   = "global-nprd-use-rg-network-services"
  },
  {
    rt_name      = "global-v2-nprd-use-hub-vnet-exr-inbound"
    subnet_name  = "GatewaySubnet"
    vnet_name    = "global-v2-nprd-use-hub-vnet"
    vnet_rg_name = "global-nprd-use-rg-network-services"
    rt_rg_name   = "global-nprd-use-rg-network-services"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "analytics-nprd-use-data-subnet"
    vnet_name    = "analytics-nprd-use-vnet"
    vnet_rg_name = "analytics-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-ilb-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-dev-app-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-dev-data-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-dev-web-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-perf-app-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-perf-data-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-perf-web-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-qa-app-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-qa-data-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-qa-web-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-uat-app-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-uat-data-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "custapps-nprd-use-uat-web-subnet"
    vnet_name    = "custapps-nprd-use-vnet"
    vnet_rg_name = "custapps-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "dmt-iaas-nprd-use-subnet"
    vnet_name    = "dmt-iaas-nprd-use-vnet"
    vnet_rg_name = "dmt-iaas-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-dev-api-services"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-dev-sitecore"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-qa-api-services"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-qa-jobs"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-qa-sitecore"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-uat-api-services"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-uat-jobs"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "gafcom-v2-nprd-use-vnet-uat-sitecore"
    vnet_name    = "gafcom-v2-nprd-use-vnet"
    vnet_rg_name = "gafcom-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "it-nprd-use-subnet"
    vnet_name    = "it-nprd-use-vnet"
    vnet_rg_name = "it-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "kofax-dev-use-subnet"
    vnet_name    = "kofax-nprd-use-vnet"
    vnet_rg_name = "kofax-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "kofax-uat01-use-subnet"
    vnet_name    = "kofax-nprd-use-vnet"
    vnet_rg_name = "kofax-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "maximo-dev-use-subnet"
    vnet_name    = "maximo-nprd-use-vnet"
    vnet_rg_name = "maximo-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "maximo-nprd-use-subnet"
    vnet_name    = "maximo-nprd-use-vnet"
    vnet_rg_name = "maximo-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "maximo-perf-use-subnet"
    vnet_name    = "maximo-nprd-use-vnet"
    vnet_rg_name = "maximo-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "maximo-qa-use-subnet"
    vnet_name    = "maximo-nprd-use-vnet"
    vnet_rg_name = "maximo-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "mulesoft-dev-use-subnet"
    vnet_name    = "mulesoft-nprd-use-vnet"
    vnet_rg_name = "mulesoft-nprod-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "network_64_0-127"
    vnet_name    = "global-nprd-use-vnet"
    vnet_rg_name = "global-nprd-use-rg-network-services"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "pro2sql-dev-use-subnet"
    vnet_name    = "pro2sql-nprd-use-vnet"
    vnet_rg_name = "pro2sql-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "pro2sql-qa-use-subnet"
    vnet_name    = "pro2sql-nprd-use-vnet"
    vnet_rg_name = "pro2sql-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "pro2sql-uat-use-subnet"
    vnet_name    = "pro2sql-nprd-use-vnet"
    vnet_rg_name = "pro2sql-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftgaf-nprd-use-dev-app-subnet"
    vnet_name    = "psoftgaf-nprd-use-vnet"
    vnet_rg_name = "psoftgaf-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftgaf-nprd-use-dev-data-subnet"
    vnet_name    = "psoftgaf-nprd-use-vnet"
    vnet_rg_name = "psoftgaf-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftgaf-nprd-use-ilb-subnet"
    vnet_name    = "psoftgaf-nprd-use-vnet"
    vnet_rg_name = "psoftgaf-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftgaf-nprd-use-qa-app-subnet"
    vnet_name    = "psoftgaf-nprd-use-vnet"
    vnet_rg_name = "psoftgaf-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftgaf-nprd-use-uat-app-subnet"
    vnet_name    = "psoftgaf-nprd-use-vnet"
    vnet_rg_name = "psoftgaf-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftgaf-nprd-use-uat-data-subnet"
    vnet_name    = "psoftgaf-nprd-use-vnet"
    vnet_rg_name = "psoftgaf-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftsip-nprd-use-dev-app-subnet"
    vnet_name    = "psoftsip-nprd-use-vnet"
    vnet_rg_name = "psoftsip-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftsip-nprd-use-dev-data-subnet"
    vnet_name    = "psoftsip-nprd-use-vnet"
    vnet_rg_name = "psoftsip-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftsip-nprd-use-dev-web-subnet"
    vnet_name    = "psoftsip-nprd-use-vnet"
    vnet_rg_name = "psoftsip-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftsip-nprd-use-qa-app-subnet"
    vnet_name    = "psoftsip-nprd-use-vnet"
    vnet_rg_name = "psoftsip-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "psoftsip-nprd-use-qa-web-subnet"
    vnet_name    = "psoftsip-nprd-use-vnet"
    vnet_rg_name = "psoftsip-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_66_0-15_dev"
    vnet_name    = "rewards-nprd-use-vnet"
    vnet_rg_name = "rewards-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_66_16-31_qa"
    vnet_name    = "rewards-nprd-use-vnet"
    vnet_rg_name = "rewards-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_66_32-47_uat"
    vnet_name    = "rewards-nprd-use-vnet"
    vnet_rg_name = "rewards-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_66_48-63_perf"
    vnet_name    = "rewards-nprd-use-vnet"
    vnet_rg_name = "rewards-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_66_80-95_nprd"
    vnet_name    = "rewards-nprd-use-vnet"
    vnet_rg_name = "rewards-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_82_0-127_agents"
    vnet_name    = "azdevops-agents-vnet"
    vnet_rg_name = "relmgt-dev-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_82_128-191_agents_1"
    vnet_name    = "azdevops-agents-vnet"
    vnet_rg_name = "relmgt-dev-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "subnet_82_192-223_agents_2"
    vnet_name    = "azdevops-agents-vnet"
    vnet_rg_name = "relmgt-dev-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "tableau-dev-use-subnet"
    vnet_name    = "tableau-nprd-use-vnet"
    vnet_rg_name = "tableau-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "tableau-nprd-use-subnet"
    vnet_name    = "tableau-nprd-use-vnet"
    vnet_rg_name = "tableau-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "tableau-qa-use-subnet"
    vnet_name    = "tableau-nprd-use-vnet"
    vnet_rg_name = "tableau-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "tableau-uat-use-subnet"
    vnet_name    = "tableau-nprd-use-vnet"
    vnet_rg_name = "tableau-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "test-vm-subnet"
    vnet_name    = "connectivity-test-nprd-use-vnet"
    vnet_rg_name = "connectity-test-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "varnet-dev-use-subnet"
    vnet_name    = "varnet-nprd-use-vnet"
    vnet_rg_name = "varnet-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "varnet-nprd-shared-use-subnet"
    vnet_name    = "varnet-nprd-use-vnet"
    vnet_rg_name = "varnet-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "varnet-qa-use-subnet"
    vnet_name    = "varnet-nprd-use-vnet"
    vnet_rg_name = "varnet-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "varnet-uat-use-subnet"
    vnet_name    = "varnet-nprd-use-vnet"
    vnet_rg_name = "varnet-nprd-use-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
  {
    rt_name      = "global-nprd-use-spokes-rt"
    subnet_name  = "zerto-nprd-use-internal-subnet"
    vnet_name    = "zerto-nprd-use-internal-vnet"
    vnet_rg_name = "zerto-nprd-use-internal-rg"
    rt_rg_name   = "global-nprd-use-rg"
  },
]


#public IP objects
pip_maps = [
  {
    name              = "aks-v2-dev-clusteroutboundpip"
    rg_name           = "aks-v2-nprd-use-rg"
    location          = "EASTUS"
    sku               = "Standard"
    allocation_method = "Static"
    dns_label         = null
  },
  {
    name              = "aks-v2-perf-clusteroutboundpip"
    rg_name           = "aks-v2-nprd-use-rg"
    location          = "EASTUS"
    sku               = "Standard"
    allocation_method = "Static"
    dns_label         = null
  },
  {
    name              = "aks-v2-qa-clusteroutboundpip"
    rg_name           = "aks-v2-nprd-use-rg"
    location          = "EASTUS"
    sku               = "Standard"
    allocation_method = "Static"
    dns_label         = null
  },
  {
    name              = "aks-v2-uat-clusteroutboundpip"
    rg_name           = "aks-v2-nprd-use-rg"
    location          = "EASTUS"
    sku               = "Standard"
    allocation_method = "Static"
    dns_label         = null
  }
]



#load balancer
lb_maps = [
  {
    lb_name     = "applicationsuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName          = "custapps_nprd_ilb_fe_IP"
        pubIpName         = null
        vnetName          = "custapps-nprd-use-vnet"
        subneName         = "custapps-nprd-ilb-subnet"
        vnetRgName        = "custapps-nprd-use-rg"
        priIpAddress      = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "cczperf-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "cczperf_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "cczpublicperf-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "cczpublicperf_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "cczpublicuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "cczpublicuat_ilb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "cczuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName          = "cczuat_internal_lb_fe_ip"
        pubIpName         = null
        vnetName          = "custapps-nprd-use-vnet"
        subneName         = "custapps-nprd-ilb-subnet"
        vnetRgName        = "custapps-nprd-use-rg"
        priIpAddress      = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "customerzoneuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "customerzoneuat_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "customerzoneuatabc-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "customerzoneuatabc_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "ordersuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "ordersuat_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "plmnetuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "plmnetuat_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "plmnetuatm-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "plmnetuatm_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "sampleordersuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "sampleordersuat_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "webapiperf-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName          = "LoadBalancerFrontEnd"
        pubIpName         = null
        vnetName          = "custapps-nprd-use-vnet"
        subneName         = "custapps-nprd-ilb-subnet"
        vnetRgName        = "custapps-nprd-use-rg"
        priIpAddress      = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "webapiuat-internal-lb"
    lb_rg_name  = "custapps-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "webapiuat_internal_lb_fe_ip"
        pubIpName              = null
        vnetName               = "custapps-nprd-use-vnet"
        subneName              = "custapps-nprd-ilb-subnet"
        vnetRgName             = "custapps-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "kofax-uat01-use-web-private-lb"
    lb_rg_name  = "kofax-uat01-use-rg"
    lb_location = "EASTUS"
    sku         = "Basic"
    frontend_ip_configuration = [
      {
        lbFdName               = "LoadBalancerFrontEnd"
        pubIpName              = null
        vnetName               = "kofax-nprd-use-vnet"
        subneName              = "kofax-uat01-use-subnet"
        vnetRgName             = "kofax-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  },
  {
    lb_name     = "maximo-nprd-use-private-lb"
    lb_rg_name  = "maximo-nprd-use-rg"
    lb_location = "EASTUS"
    sku         = "Standard"
    frontend_ip_configuration = [
      {
        lbFdName               = "LoadBalancerFrontEnd"
        pubIpName              = null
        vnetName               = "maximo-nprd-use-vnet"
        subneName              = "maximo-nprd-use-subnet"
        vnetRgName             = "maximo-nprd-use-rg"
        priIpAddress           = null
        priIpAddressAllocation = "Dynamic"
      }
    ]
  }
]

#load balancer probe
lbprobe_maps = [
  /*{
    probeName        = "AZSMTP"
    lb_rg_name       = "global-hub-use-rg-core-services"
    loadbalancerName = "azsmtplb"
    protocol         = "tcp"
    port             = "80"
  }*/
]

#load balancer backend pool
lbBackendpool_maps = [
  /*{
    lbBackendName    = "azsmtppublic"
    lb_rg_name       = "global-hub-use-rg-core-services"
    loadbalancerName = "azsmtplbpublic"
  }*/
]

#load balancer backend pool rules
lbBackendPoolRules_maps = [
  /*{
    lbRuleName                  = "azsmtplb-rule"
    lb_rg_name                  = "global-hub-use-rg-core-services"
    loadbalancerName            = "azsmtplb"
    protocol                    = "tcp"
    frontend_port               = "25" #"*"
    backend_port                = "25"
    frontendIpConfigurationName = "LoadBalancerFrontEnd"
    probeName                   = "AZSMTP"
    backendAddressPoolName      = null
  }*/
]

#load balancer - NIC association
lbNICAssociation_maps = [
  /*{
        nic_name  =  "vm_nic_name"
        ipconfig_name = "nic-ip_config"
        backendpoolName = "lb_backend_pool"
    }*/
]


