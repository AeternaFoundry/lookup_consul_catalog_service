output "catalog_service_lookup_id" {
  description = "Map of id values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no id are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "catalog_service_lookup_datacenter" {
  description = "Map of datacenter values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no datacenter are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "catalog_service_lookup_filter" {
  description = "Map of filter values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no filter are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "catalog_service_lookup_name" {
  description = "Map of name values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no name are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "catalog_service_lookup_query_options" {
  description = "Map of query_options values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no query_options are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.query_options if v.query_options != null && length(v.query_options) > 0 }
  sensitive   = true
}
output "catalog_service_lookup_service" {
  description = "Map of service values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no service are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.service if v.service != null && length(v.service) > 0 }
}
output "catalog_service_lookup_tag" {
  description = "Map of tag values across all catalog_service_lookup, keyed the same as var.catalog_service_lookup except keys with no tag are omitted"
  value       = { for k, v in data.consul_catalog_service.catalog_service_lookup : k => v.tag if v.tag != null && length(v.tag) > 0 }
}

