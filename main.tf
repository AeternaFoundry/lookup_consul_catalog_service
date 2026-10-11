data "consul_catalog_service" "catalog_service_lookup" {
  for_each = var.catalog_service_lookup

  name       = each.value.name
  datacenter = each.value.datacenter
  filter     = each.value.filter
  tag        = each.value.tag

  dynamic "query_options" {
    for_each = each.value.query_options != null ? each.value.query_options : []
    content {
      allow_stale        = query_options.value.allow_stale
      datacenter         = query_options.value.datacenter
      namespace          = query_options.value.namespace
      near               = query_options.value.near
      node_meta          = query_options.value.node_meta
      partition          = query_options.value.partition
      require_consistent = query_options.value.require_consistent
      token              = query_options.value.token
      wait_index         = query_options.value.wait_index
      wait_time          = query_options.value.wait_time
    }
  }
}

