output "records" {
  value = "${join(",", aws_route53_record.dns_entry.*.id)}"
}
