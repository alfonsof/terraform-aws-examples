# Output variable: DB instance address
output "address" {
  value = "${aws_db_instance.example.address}"
}

# Output variable: DB instance port
output "port" {
  value = "${aws_db_instance.example.port}"
}
