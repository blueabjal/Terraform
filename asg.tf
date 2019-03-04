resource  "aws_autoscaling_group" "ASG" {
    count = 3
	name                      = "${element(var.launch_configuration, count.index)}-asg"
	availability_zones        = ["${element(var.availability_zones, count.index)}"]
	load_balancers            = ["${element(var.load_balancers, count.index)}"]
	vpc_zone_identifier       = ["${element(var.vpc_zone_identifier, count.index)}"]
	max_size                  = "${element(var.max_size, count.index)}"
	min_size                  = "${element(var.min_size, count.index)}"
    desired_capacity          = "${element(var.desired_capacity, count.index)}"
	launch_configuration      = "${element(var.launch_configuration, count.index)}"
	termination_policies      = ["OldestInstance"]

   depends_on = ["aws_launch_configuration.LC"]
   lifecycle {
    create_before_destroy  = true
  }
  tag {
    key                 = "Name"
    value               = "${element(var.launch_configuration, count.index)}-instance"
    propagate_at_launch = "true"
  }
}	

