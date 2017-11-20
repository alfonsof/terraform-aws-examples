output "neo_arn" {
  value = ["${aws_iam_user.example.*.arn}"]
}
