resource "auth0_prompt_screen_renderer" "prompt_screen_renderers" {
  for_each = var.prompt_screen_renderers

  prompt_type                = each.value.prompt_type
  screen_name                = each.value.screen_name
  context_configuration      = each.value.context_configuration
  default_head_tags_disabled = each.value.default_head_tags_disabled
  head_tags                  = each.value.head_tags
  rendering_mode             = each.value.rendering_mode
  use_page_template          = each.value.use_page_template

  dynamic "filters" {
    for_each = each.value.filters != null ? [each.value.filters] : []
    content {
      clients       = filters.value.clients
      domains       = filters.value.domains
      match_type    = filters.value.match_type
      organizations = filters.value.organizations
    }
  }
}

