resource "azurerm_resource_group" "Rg" {
for_each = local.Rg
name = each.value.name
location = each.value.location
}