output "core_cpes_id" {
  description = "Map of id values across all core_cpes, keyed the same as var.core_cpes except keys with no id are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_cpes_compartment_id" {
  description = "Map of compartment_id values across all core_cpes, keyed the same as var.core_cpes except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_cpes_cpe_device_shape_id" {
  description = "Map of cpe_device_shape_id values across all core_cpes, keyed the same as var.core_cpes except keys with no cpe_device_shape_id are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.cpe_device_shape_id if v.cpe_device_shape_id != null && length(v.cpe_device_shape_id) > 0 }
}
output "core_cpes_defined_tags" {
  description = "Map of defined_tags values across all core_cpes, keyed the same as var.core_cpes except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_cpes_display_name" {
  description = "Map of display_name values across all core_cpes, keyed the same as var.core_cpes except keys with no display_name are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_cpes_freeform_tags" {
  description = "Map of freeform_tags values across all core_cpes, keyed the same as var.core_cpes except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_cpes_ip_address" {
  description = "Map of ip_address values across all core_cpes, keyed the same as var.core_cpes except keys with no ip_address are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "core_cpes_is_private" {
  description = "Map of is_private values across all core_cpes, keyed the same as var.core_cpes except keys with no is_private are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.is_private if v.is_private != null }
}
output "core_cpes_time_created" {
  description = "Map of time_created values across all core_cpes, keyed the same as var.core_cpes except keys with no time_created are omitted"
  value       = { for k, v in oci_core_cpe.core_cpes : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

