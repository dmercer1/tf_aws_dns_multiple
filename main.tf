resource "aws_route53_record" "entry" {
  zone_id = "${var.zone_id}"
  name = "${element(split(",", var.names), count.index)}"
  record = "${var.records}"
  ttl = "300"
  type = ["${var.type}"]
  count = "${length(compact(split(",", var.names)))}"
}
