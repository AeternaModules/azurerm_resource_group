output "resource_groups" {
  description = "All resource_group resources"
  value       = azurerm_resource_group.resource_groups
}
output "resource_groups_location" {
  description = "List of location values across all resource_groups"
  value       = [for k, v in azurerm_resource_group.resource_groups : v.location]
}
output "resource_groups_managed_by" {
  description = "List of managed_by values across all resource_groups"
  value       = [for k, v in azurerm_resource_group.resource_groups : v.managed_by]
}
output "resource_groups_name" {
  description = "List of name values across all resource_groups"
  value       = [for k, v in azurerm_resource_group.resource_groups : v.name]
}
output "resource_groups_tags" {
  description = "List of tags values across all resource_groups"
  value       = [for k, v in azurerm_resource_group.resource_groups : v.tags]
}

