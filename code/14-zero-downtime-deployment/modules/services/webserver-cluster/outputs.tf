# Output variable: DNS Name of ELB
output "elb_dns_name" {
  value = "${aws_elb.example.dns_name}"
}

# Output variable: Auto Scaling Group name
output "asg_name" {
  value = "${aws_autoscaling_group.example.name}"
}

# Output variable: ELB Security Group Id
output "elb_security_group_id" {
  value = "${aws_security_group.elb.id}"
}