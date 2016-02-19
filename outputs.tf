output "records" {
  value = "${join(",", module.dns_entry.*.id)}"
}
