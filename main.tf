resource "oci_core_cpe" "core_cpes" {
  for_each = var.core_cpes

  compartment_id      = each.value.compartment_id
  ip_address          = each.value.ip_address
  cpe_device_shape_id = each.value.cpe_device_shape_id
  defined_tags        = each.value.defined_tags
  display_name        = each.value.display_name
  freeform_tags       = each.value.freeform_tags
  is_private          = each.value.is_private

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

