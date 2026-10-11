variable "core_cpes" {
  description = <<EOT
Map of core_cpes, attributes below
Required:
    - compartment_id
    - ip_address
Optional:
    - cpe_device_shape_id
    - defined_tags
    - display_name
    - freeform_tags
    - is_private
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id      = string
    ip_address          = string
    cpe_device_shape_id = optional(string)
    defined_tags        = optional(map(string))
    display_name        = optional(string)
    freeform_tags       = optional(map(string))
    is_private          = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

