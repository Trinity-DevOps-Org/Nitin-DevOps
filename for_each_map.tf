# variable "rg_info" {
#   type = map(string)
#   default = {
#     nitinrg1 = "eastus"
#     nitinrg2 = "westus"
#     nitinrg3 = "westus2"
#   }
# }

# resource "azurerm_resource_group" "example" {
#   for_each = var.rg_info
#   name = each.key
#   location = each.value
# }

# output "rgid" {
#   value = [ for k,v in azurerm_resource_group.example : v.id ]
# }
