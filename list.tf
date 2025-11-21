# variable "rglist" {
#   type = list(string)
#   default = [ "nitin-rg1","nitin-rg2" ]
# }
# # Tuple is used to limit the key-pair values
# variable "rgtuple" {
#   type = tuple([ string,number,bool ])  #Constraint 
#   default = [ "value", 0, false ]
# }
# # we use indexing to fetch value from variable
# resource "azurerm_resource_group" "example" {
#     name = var.rglist[0]
#     location = "eastus"
# }

# resource "azurerm_resource_group" "example2" {
#     name = var.rglist[1]
#     location = "eastus"
# }
