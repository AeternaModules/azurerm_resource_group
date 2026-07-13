variable "resource_groups" {
  description = <<EOT
Map of resource_groups, attributes below
Required:
    - location
    - name
Optional:
    - managed_by
    - tags
EOT

  type = map(object({
    location   = string
    name       = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.resource_groups : (
        length(v.name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_groups : (
        !endswith(v.name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_groups : (
        length(v.name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_groups : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.resource_groups : (
        v.managed_by == null || (length(v.managed_by) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

