output "resource_groups_id" {
  description = "Map of id values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_groups_location" {
  description = "Map of location values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.location if v.location != null && length(v.location) > 0 }
}
output "resource_groups_managed_by" {
  description = "Map of managed_by values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.managed_by if v.managed_by != null && length(v.managed_by) > 0 }
}
output "resource_groups_name" {
  description = "Map of name values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "resource_groups_tags" {
  description = "Map of tags values across all resource_groups, keyed the same as var.resource_groups"
  value       = { for k, v in azurerm_resource_group.resource_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

