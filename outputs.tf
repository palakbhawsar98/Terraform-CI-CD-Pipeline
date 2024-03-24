output "instance_type" {
  value = aws_instance.test_instance.instance_type
}

output "created_by" {
  value = aws_instance.test_instance.tags["created_by"]
}
