# module "rg1" {
#   source = "./rg"
#   rg_name = "denitinep-rg1"
#   rg_loc = "westus"
# }

# module "rg2" {
#   source = "./rg"
#   rg_name = "nitin-rg2"
# }

# module "avm-res-network-virtualnetwork" {
#   source = "Azure/avm-res-network-virtualnetwork/azurerm"

#   address_space = ["10.0.0.0/16"]
#   location      = module.rg2.rgloc
#   name          = "vnet-demo-nitin-eastus2-001"
#   parent_id     = module.rg2.rgid
#   subnets = {
#     "subnet1" = {
#       name             = "subnet1"
#       address_prefixes = ["10.0.0.0/24"]
#     }
#     "subnet2" = {
#       name             = "subnet2"
#       address_prefixes = ["10.0.1.0/24"]
#     }
#   }
# }