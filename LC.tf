variable "environment" {}
resource "aws_launch_configuration" "LC" {
    count = 3
    name                 = "nv-${var.environment}-${element(var.name, count.index)}-LC-11FEB2019"
    image_id             = "${element(var.image_id, count.index)}"
    instance_type        = "${element(var.instance_type, count.index)}"
    user_data            = "${file("common.txt")}"
	security_groups      = ["${element(var.security_groups, count.index)}"]
    lifecycle { create_before_destroy = true }
}
