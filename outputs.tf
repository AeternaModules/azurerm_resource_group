output "resource_groups_location" {
  description = "Map of location values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.location }
}
output "resource_groups_managed_by" {
  description = "Map of managed_by values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.managed_by }
}
output "resource_groups_name" {
  description = "Map of name values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.name }
}
output "resource_groups_tags" {
  description = "Map of tags values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.tags }
}

