module "dns_entry" {
  source = "github.com/dmercer1/tf_aws_dns"
  zone_id = "${var.zone_id}"
  names = "${element(split(",", var.names), count.index)}"
  records = "${var.records}"
  ttl = "300"
  type = "${var.type}"
  count = "${length(compact(split(",", var.names)))}"
}
