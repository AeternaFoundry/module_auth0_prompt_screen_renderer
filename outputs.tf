output "prompt_screen_renderers_id" {
  description = "Map of id values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.id }
}
output "prompt_screen_renderers_context_configuration" {
  description = "Map of context_configuration values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.context_configuration }
}
output "prompt_screen_renderers_default_head_tags_disabled" {
  description = "Map of default_head_tags_disabled values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.default_head_tags_disabled }
}
output "prompt_screen_renderers_filters" {
  description = "Map of filters values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => one(v.filters) }
}
output "prompt_screen_renderers_head_tags" {
  description = "Map of head_tags values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.head_tags }
}
output "prompt_screen_renderers_prompt_type" {
  description = "Map of prompt_type values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.prompt_type }
}
output "prompt_screen_renderers_rendering_mode" {
  description = "Map of rendering_mode values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.rendering_mode }
}
output "prompt_screen_renderers_screen_name" {
  description = "Map of screen_name values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.screen_name }
}
output "prompt_screen_renderers_tenant" {
  description = "Map of tenant values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.tenant }
}
output "prompt_screen_renderers_use_page_template" {
  description = "Map of use_page_template values across all prompt_screen_renderers, keyed the same as var.prompt_screen_renderers"
  value       = { for k, v in auth0_prompt_screen_renderer.prompt_screen_renderers : k => v.use_page_template }
}

