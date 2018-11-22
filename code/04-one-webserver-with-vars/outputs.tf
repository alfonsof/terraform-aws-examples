# Output variable: Public IP address
output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}
