# variable "envtype" { 
# #  type = string
# }

# resource "azurerm_resource_group" "example" {
#     name = var.envtype == "prod" ? "rgprod" : (var.envtype == "dev" ? "rgdev" : (var.envtype == "test" ? "rgtest" : "rgqa"))
#     location = "eastus"
# }

# resource "azurerm_public_ip" "example" {
#   count = var.envtype == "prod" ? 3 : 1
#   name                = "deep${count.index}"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# # Conditional Expression
# # Condition ? true_value : false_value
# # policy = condition_1 ? yes_1 : (condition_2 ? yes_2 : yes_3)