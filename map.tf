# variable "rginfo" {
#   type = map(string)
#   default = {
#     name = "rg1"
#     loc = "eastus"
#     name2 = "rg2"
#     loc2 = "eastus2"
#   }
# }
# # Using Object to control the key-pair values
# variable "rgobject" {
#   type = object({
#      rgname = string
#      rgloc = string
#      count = number
#   })
#   default = {
#     count = 2
#     rgloc = "eastus"
#     rgname = "nitinrg"
#   }
# }
# resource "azurerm_resource_group" "example" {
#     name = var.rginfo.name
#     location = var.rginfo.loc
# }

# resource "azurerm_resource_group" "example2" {
#     name = var.rginfo.name2
#     location = var.rginfo.loc2
# }
