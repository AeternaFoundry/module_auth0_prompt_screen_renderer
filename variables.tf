variable "prompt_screen_renderers" {
  description = <<EOT
Map of prompt_screen_renderers, attributes below
Required:
    - prompt_type
    - screen_name
Optional:
    - context_configuration
    - default_head_tags_disabled
    - head_tags
    - rendering_mode
    - use_page_template
    - filters (block):
        - clients (optional)
        - domains (optional)
        - match_type (required)
        - organizations (optional)
EOT

  type = map(object({
    prompt_type                = string
    screen_name                = string
    context_configuration      = optional(set(string))
    default_head_tags_disabled = optional(bool)
    head_tags                  = optional(string)
    rendering_mode             = optional(string)
    use_page_template          = optional(bool)
    filters = optional(object({
      clients       = optional(string)
      domains       = optional(string)
      match_type    = string
      organizations = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.prompt_screen_renderers : (
        v.filters == null || (contains(["includes_any", "excludes_any"], v.filters.match_type))
      )
    ])
    error_message = "must be one of: \"includes_any\", \"excludes_any\""
  }
  validation {
    condition = alltrue([
      for k, v in var.prompt_screen_renderers : (
        v.filters == null || (v.filters.clients == null || (can(jsondecode(v.filters.clients))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.prompt_screen_renderers : (
        v.filters == null || (v.filters.organizations == null || (can(jsondecode(v.filters.organizations))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.prompt_screen_renderers : (
        v.filters == null || (v.filters.domains == null || (can(jsondecode(v.filters.domains))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.prompt_screen_renderers : (
        v.head_tags == null || (can(jsondecode(v.head_tags)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

