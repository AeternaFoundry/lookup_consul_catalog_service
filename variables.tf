variable "catalog_service_lookup" {
  description = <<EOT
Map of catalog_service_lookup, attributes below
Required:
    - name
Optional:
    - datacenter
    - filter
    - tag
    - query_options (block):
        - allow_stale (optional)
        - datacenter (optional)
        - namespace (optional)
        - near (optional)
        - node_meta (optional)
        - partition (optional)
        - require_consistent (optional)
        - token (optional)
        - wait_index (optional)
        - wait_time (optional)
EOT

  type = map(object({
    name       = string
    datacenter = optional(string)
    filter     = optional(string)
    tag        = optional(string)
    query_options = optional(list(object({
      allow_stale        = optional(bool)
      datacenter         = optional(string)
      namespace          = optional(string)
      near               = optional(string)
      node_meta          = optional(map(string))
      partition          = optional(string)
      require_consistent = optional(bool)
      token              = optional(string)
      wait_index         = optional(number)
      wait_time          = optional(string)
    })))
  }))
}

