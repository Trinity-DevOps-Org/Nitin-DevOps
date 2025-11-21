# variable "rg_info1" {
#   type = map(string)
#   default = {
#     nitinrg1 = "eastus"
#     nitinrg2 = "westus"
#     nitinrg3 = "westus2"
#   }
# }

# variable "rglist" {
#   type = list(any)
#   default = [ "deep-rg1","deep-rg2","deep-rg3" ]
# }

# output "name2" {
#   value = { for x in var.rglist: x => upper(x) }
# }


# output "name" {
#   value = [ for k, v in var.rg_info1 : v ]
# }